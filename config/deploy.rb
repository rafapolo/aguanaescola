require 'mina/git'
require 'mina/bundler'
require 'mina/rvm'

set :domain, 'agendaaguanaescola.eco.br'
set :user, 'agua'
set :repository, 'git://github.com/rafapolo/aguanaescola.git'
set :deploy_to,  '/home/agua/agendaaguanaescola.eco.br'
set :app,  "#{deploy_to}/current"

task :environment do
  invoke :'rvm:use[ruby-2.0.0-p0@global]'
end

task :deploy do
  deploy do
    invoke :'git:clone'
    queue 'bundle install'    

	to :launch do
	  queue "ln -nfs #{deploy_to}/shared/db/prod.sqlite3 #{app}/db/prod.sqlite3"
	  queue "ln -nfs #{deploy_to}/shared/log/production.log #{app}/log/production.log"
	  
	  queue "mkdir #{app}/tmp"
	  queue "touch #{app}/tmp/restart.txt"
	end

  end
end



