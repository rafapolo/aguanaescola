require 'mina/git'
require 'mina/rails'
require 'mina/bundler'

set :domain, 'agendaaguanaescola.eco.br'
set :user, 'agua'
set :repository, 'git://github.com/rafapolo/aguanaescola.git'
set :deploy_to,  '/home/agua/agendaaguanaescola.eco.br'
set :app,  "#{deploy_to}/current"
set :pid_file, "#{deploy_to}/shared/pid"

task :deploy do
  deploy do
    invoke :'git:clone'
    invoke :'rails:assets_precompile'  
    queue 'ruby --version' 
    queue 'rake db:migrate RAILS_ENV="production"' 
    queue 'sudo bundle install' 

  	to :launch do
  	  queue "ln -nfs #{deploy_to}/shared/db/prod.sqlite3 #{app}/db/prod.sqlite3"
  	  queue "ln -nfs #{deploy_to}/shared/log/production.log #{app}/log/production.log"
  	  invoke :restart
  	end
  end
end

task :start => :environment do
  queue "cd #{app}; sudo bundle exec rackup -s puma -p 80 -P #{pid_file} -E production -D"
end
 
task :stop => :environment do
  queue %[sudo kill -9 `cat #{pid_file}`]
end
 
task :restart => :environment do
  invoke :stop
  invoke :start
end


