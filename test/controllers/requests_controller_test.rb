require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { date_end: @request.date_end, date_start: @request.date_start, date_submitted: @request.date_submitted, email: @request.email, info: @request.info, name: @request.name, org: @request.org, phone: @request.phone, ticket: @request.ticket }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { date_end: @request.date_end, date_start: @request.date_start, date_submitted: @request.date_submitted, email: @request.email, info: @request.info, name: @request.name, org: @request.org, phone: @request.phone, ticket: @request.ticket }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
