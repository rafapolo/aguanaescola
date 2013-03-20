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
    invoke :'restart'
  end
end

task :restart do
  queue "ln -nfs #{deploy_to}/shared/db/prod.sqlite3 #{deploy_to}/current/db/prod.sqlite3"
  queue 'touch #{deploy_to}/current/tmp/restart.txt'
end