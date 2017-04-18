require 'system_test_helper'

class PostsTest < ApplicationSystemTestCase
  setup do
    visit posts_path
    click_on 'New Post'
  end

  test 'create a post' do
    fill_in 'Title', with: 'Whatever'

    click_on 'Create Post'

    assert_text 'Whatever'
  end
end
