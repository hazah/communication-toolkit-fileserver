require 'test_helper'

class FactsheetControllerTest < ActionController::TestCase
  test "should get pdf" do
    get :pdf
    assert_response :success
  end

  test "should get indesign" do
    get :indesign
    assert_response :success
  end

  test "should get zip" do
    get :zip
    assert_response :success
  end

  test "should get email" do
    get :email
    assert_response :success
  end

end
