default_run_options[:pty] = true 

set :application, "agendaaguanaescola.eco.br"

set :scm, :git
set :user, "agua"
set :branch, "master"
set :repository,  "git://github.com/rafapolo/aguanaescola.git"
set :deploy_to,  "/home/agua/#{application}"
role :app, 'agendaaguanaescola.eco.br'

namespace :deploy do
  task :restart, :roles => :app do
  	run "#{try_sudo} bundle install --deployment"
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end