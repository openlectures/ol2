require ::File.expand_path('../config/environment',  __FILE__)

use Rack::Deflater

require 'rack/protection'
use Rack::Protection, :except => :session_hijacking

run Ol2::Application
