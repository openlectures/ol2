# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
# require 'rack/protection'
# use Rack::Protection
run Ol2::Application
