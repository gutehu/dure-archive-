require 'test_helper'

class DuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dure = dures(:one)
  end

  test "should get index" do
    get dures_url
    assert_response :success
  end

  test "should get new" do
    get new_dure_url
    assert_response :success
  end

  test "should create dure" do
    assert_difference('Dure.count') do
      post dures_url, params: { dure: { activity: @dure.activity, address: @dure.address, effective: @dure.effective, name: @dure.name, other: @dure.other } }
    end

    assert_redirected_to dure_url(Dure.last)
  end

  test "should show dure" do
    get dure_url(@dure)
    assert_response :success
  end

  test "should get edit" do
    get edit_dure_url(@dure)
    assert_response :success
  end

  test "should update dure" do
    patch dure_url(@dure), params: { dure: { activity: @dure.activity, address: @dure.address, effective: @dure.effective, name: @dure.name, other: @dure.other } }
    assert_redirected_to dure_url(@dure)
  end

  test "should destroy dure" do
    assert_difference('Dure.count', -1) do
      delete dure_url(@dure)
    end

    assert_redirected_to dures_url
  end
end
