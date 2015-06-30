module AuthenticationHelpers
  include Warden::Test::Helpers
  def sign_in_as(options={})
    options.each do |scope, object|
      login_as(object, :scope => scope)
    end
  end
  RSpec.configure do |config|
    config.include AuthenticationHelpers, :type => :feature
    # prevent Warden keeping the session across multiple tests
    config.after :type => :feature do
      logout
    end
  end
end