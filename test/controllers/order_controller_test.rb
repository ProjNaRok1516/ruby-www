require 'test_helper'

class OrderControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get delivery" do
    get :delivery
    assert_response :302
  end

  test "should get confirm" do
    get :confirm
    assert_response :302
  end

end
