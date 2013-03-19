require 'mina/git'
require 'mina/bundler'
require 'mina/rvm'

set :domain, 'agendaaguanaescola.eco.br'
set :user, 'agua'
set :repository, 'git://github.com/rafapolo/aguanaescola.git'
set :deploy_to,  '/home/agua/agendaaguanaescola.eco.br'

task :environment do
  invoke :'rvm:use[ruby-2.0.0-p0@global]'
end

task :deploy do
  deploy do
    # Preparations here
    invoke :'git:clone'
    queue 'bundle install'
    #invoke :'bundle:install'
  end
end

task :restart do
  queue "ln -nfs #{File.join(shared_path, 'db/prod.sqlite3')} #{File.join(release_path, 'db/prod.sqlite3')}"
  queue 'touch tmp/restart.txt'
end