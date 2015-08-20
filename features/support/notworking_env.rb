require 'rspec'

require 'gametel'
require 'require_all'

require_rel 'screens'

World(Gametel::Navigation)

server = Brazenhead::Server.new(File.dirname(__FILE__) + '/puppy-app.apk')

class Driver
  include Brazenhead
end

Before do
  @driver = Driver.new
  server.start('PuppiesActivity')
end

After do
  server.stop
end