require 'system_test_helper'

class User::CreateTest < ActionSystemTestCase
  setup do
    visit users_path
    click_on 'New User'
  end

  test 'create a user w/ capybara defaults' do
    fill_in 'Name', with: 'Arya'

    click_on 'Create User'

    assert_text 'Arya'
  end

  test 'create a user w/ rails form helpers' do
    fill_in_all_fields 'Name' => 'Eileen'
    click_checkbox_label 'Admin'

    # only works on selenium right now
    #if Capybara.current_driver == :rack_test
      click_on 'Create User'
    #else
      #press_enter
    #end

    assert_text 'Eileen'
  end

  test "create and update a user" do
    fill_in 'Name', with: 'Cooper'

    click_on 'Create User'

    assert_text 'Cooper'

    click_on 'Edit'

    fill_in 'Name', with: 'Sterling'

    click_on 'Update User'

    assert_text 'Sterling'
  end
end
