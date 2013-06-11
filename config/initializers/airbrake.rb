Airbrake.configure do |config|
  config.api_key = 'd38b6336784dbb3187875e30be731b05'
  config.host    = 'extralogs.herokuapp.com'
  config.port    = 80
  config.secure  = config.port == 443
end