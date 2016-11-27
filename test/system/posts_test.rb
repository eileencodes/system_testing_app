require 'system_test_helper'

class PostsTest < ActionSystemTestCase
  setup do
    visit posts_path
    click_on 'New Post'
  end

  test 'create a post' do
    fill_in 'Title', with: 'This is a new post'

    click_on 'Create Post'

    assert_text 'This is a new post'
  end
end
