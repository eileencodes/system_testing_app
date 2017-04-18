require 'system_test_helper'

class User::IndexTest < SomeOtherApplicationTestCase
  setup do
    puts :POLTERGEIST => Capybara.current_driver
    visit users_url
  end

  test 'users index with rails assertions' do
    assert_selector 'h1', text: 'Users'
    #assert_all_of_selectors 'p.test', text: [ 'A', 'B' ]
    #assert_all_of_selectors 'td.name'
    #assert_none_of_selectors 'ul'
  end
end
