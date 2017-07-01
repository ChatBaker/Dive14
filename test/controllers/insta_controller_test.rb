require 'test_helper'

class InstaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instum = insta(:one)
  end

  test "should get index" do
    get insta_url
    assert_response :success
  end

  test "should get new" do
    get new_instum_url
    assert_response :success
  end

  test "should create instum" do
    assert_difference('Instum.count') do
      post insta_url, params: { instum: { content: @instum.content } }
    end

    assert_redirected_to instum_url(Instum.last)
  end

  test "should show instum" do
    get instum_url(@instum)
    assert_response :success
  end

  test "should get edit" do
    get edit_instum_url(@instum)
    assert_response :success
  end

  test "should update instum" do
    patch instum_url(@instum), params: { instum: { content: @instum.content } }
    assert_redirected_to instum_url(@instum)
  end

  test "should destroy instum" do
    assert_difference('Instum.count', -1) do
      delete instum_url(@instum)
    end

    assert_redirected_to insta_url
  end
end
