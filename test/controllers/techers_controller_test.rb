require "test_helper"

class TechersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @techer = techers(:one)
  end

  test "should get index" do
    get techers_url
    assert_response :success
  end

  test "should get new" do
    get new_techer_url
    assert_response :success
  end

  test "should create techer" do
    assert_difference("Techer.count") do
      post techers_url, params: { techer: { age: @techer.age, name: @techer.name } }
    end

    assert_redirected_to techer_url(Techer.last)
  end

  test "should show techer" do
    get techer_url(@techer)
    assert_response :success
  end

  test "should get edit" do
    get edit_techer_url(@techer)
    assert_response :success
  end

  test "should update techer" do
    patch techer_url(@techer), params: { techer: { age: @techer.age, name: @techer.name } }
    assert_redirected_to techer_url(@techer)
  end

  test "should destroy techer" do
    assert_difference("Techer.count", -1) do
      delete techer_url(@techer)
    end

    assert_redirected_to techers_url
  end
end
