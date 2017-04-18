require 'test_helper'
require "capybara/poltergeist"

# ok so the problem is that driven_by is called on boot instead
# of on the instance of the test.

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome
end

class SomeOtherApplicationTestCase < ActionDispatch::SystemTestCase
  driven_by :poltergeist
end
