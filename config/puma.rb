rails_env = ENV['RAILS_ENV'] || 'development'

threads 4,4

bind  "unix:///home/agua/aguanaescola.git/shared/tmp/puma/appname-puma.sock"
pidfile "/home/agua/aguanaescola.git/current/tmp/puma/pid"
state_path "/home/agua/aguanaescola.git/current/tmp/puma/state"

activate_control_app