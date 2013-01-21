require ::File.expand_path('../config/environment',  __FILE__)

use Rack::Deflater

require 'rack/protection'
use Rack::Protection, :except => :session_hijacking

require 'rack/cache'
use Rack::Cache,
  :verbose     => true,
  :metastore   => 'file:/var/cache/rack/meta',
  :entitystore => 'file:/var/cache/rack/body'

run Ol2::Application
