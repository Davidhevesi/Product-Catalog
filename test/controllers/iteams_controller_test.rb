require 'test_helper'

class IteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iteam = iteams(:one)
  end

  test "should get index" do
    get iteams_url
    assert_response :success
  end

  test "should get new" do
    get new_iteam_url
    assert_response :success
  end

  test "should create iteam" do
    assert_difference('Iteam.count') do
      post iteams_url, params: { iteam: { color: @iteam.color, description: @iteam.description, name: @iteam.name, price: @iteam.price, quantity: @iteam.quantity } }
    end

    assert_redirected_to iteam_url(Iteam.last)
  end

  test "should show iteam" do
    get iteam_url(@iteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_iteam_url(@iteam)
    assert_response :success
  end

  test "should update iteam" do
    patch iteam_url(@iteam), params: { iteam: { color: @iteam.color, description: @iteam.description, name: @iteam.name, price: @iteam.price, quantity: @iteam.quantity } }
    assert_redirected_to iteam_url(@iteam)
  end

  test "should destroy iteam" do
    assert_difference('Iteam.count', -1) do
      delete iteam_url(@iteam)
    end

    assert_redirected_to iteams_url
  end
end
