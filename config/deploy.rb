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
    invoke :'git:clone'
    queue 'bundle install'
  end
end

task :restart do
  queue "ln -nfs #{deploy_to}/shared/db/prod.sqlite3 db/prod.sqlite3"
  queue 'touch tmp/restart.txt'
end