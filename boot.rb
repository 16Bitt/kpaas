require 'sinatra'
require 'haml'

Dir.glob("#{__dir__}/lib/**/*.rb").each { |file| require file }
Dir.glob("#{__dir__}/srv/*.rb").each { |file| require file }