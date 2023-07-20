require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get groups_index_url
    assert_response :success
  end

  test 'should get show' do
    get groups_show_url
    assert_response :success
  end

  test 'should get destroy' do
    get groups_destroy_url
    assert_response :success
  end
end
