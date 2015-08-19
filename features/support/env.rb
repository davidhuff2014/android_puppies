require 'rspec'
require 'gametel'
# require 'require_all'

# require_rel 'screens'

World(Gametel::Navigation)

keystore = {
  # :path => File.expand_path('~/.android/debug.keystore'),
  :path => File.dirname(__FILE__) + '/debug.keystore',
  :alias => 'androiddebugkey',
  :password => 'android',
  :keystore_password => 'android'
}

# Gametel.apk_path = PATH_TO_APK
Gametel.apk_path = File.dirname(__FILE__) + '/puppy-app.apk'
Gametel.keystore = keystore

Before do
  @driver = Gametel.start('PuppiesActivity')
end

After do
  Gametel.stop
end
