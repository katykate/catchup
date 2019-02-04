require 'test_helper'

class CatchupListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catchup_list = catchup_lists(:one)
  end

  test "should get index" do
    get catchup_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_catchup_list_url
    assert_response :success
  end

  test "should create catchup_list" do
    assert_difference('CatchupList.count') do
      post catchup_lists_url, params: { catchup_list: { description: @catchup_list.description, title: @catchup_list.title } }
    end

    assert_redirected_to catchup_list_url(CatchupList.last)
  end

  test "should show catchup_list" do
    get catchup_list_url(@catchup_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_catchup_list_url(@catchup_list)
    assert_response :success
  end

  test "should update catchup_list" do
    patch catchup_list_url(@catchup_list), params: { catchup_list: { description: @catchup_list.description, title: @catchup_list.title } }
    assert_redirected_to catchup_list_url(@catchup_list)
  end

  test "should destroy catchup_list" do
    assert_difference('CatchupList.count', -1) do
      delete catchup_list_url(@catchup_list)
    end

    assert_redirected_to catchup_lists_url
  end
end
