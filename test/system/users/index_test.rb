require 'test_helper'

class User::IndexTest < Rails::SystemTestCase
  setup do
    visit users_path
  end

  test 'users index with rails assertions' do
    assert_all_of_selectors 'td.name'
    assert_none_of_selectors 'ul'
  end
end
