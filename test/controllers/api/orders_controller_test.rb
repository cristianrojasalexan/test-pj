require 'test_helper'

class Api::OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get api_orders_url, as: :json
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post api_orders_url, params: { order: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show order" do
    get api_order_url(@order), as: :json
    assert_response :success
  end

  test "should update order" do
    patch api_order_url(@order), params: { order: {  } }, as: :json
    assert_response 200
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete api_order_url(@order), as: :json
    end

    assert_response 204
  end
end
