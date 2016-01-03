require 'test_helper'

class SettingsControllerTest < ActionController::TestCase
  test "should get key:string" do
    get :key:string
    assert_response :success
  end

  test "should get value:string" do
    get :value:string
    assert_response :success
  end

  test "should get created_at:datetime" do
    get :created_at:datetime
    assert_response :success
  end

  test "should get updated_at:datetime" do
    get :updated_at:datetime
    assert_response :success
  end

end
