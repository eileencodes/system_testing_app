require 'test_helper'

class CreateUserTest < Rails::SystemTestCase
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
    fill_in_all_fields 'Name' => 'Arya'
    click_checkbox_label 'Admin'

    # only works on selenium right now
    if Capybara.current_driver == :rack_test
      click_on 'Create User'
    else
      press_enter
    end

    assert_text 'Arya'
  end
end
