require 'system_test_helper'

class CompaniesTest < ActionSystemTestCase
  setup do
    visit companies_path
  end

  test 'index view' do
    assert_selector 'h1', text: 'Companies'
  end
end
