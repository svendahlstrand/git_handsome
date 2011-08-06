PATH = File.expand_path('../', __FILE__)

$: << PATH
$: << "#{PATH}/lib"

require 'sinatra'
require 'app'

run Sinatra::Application