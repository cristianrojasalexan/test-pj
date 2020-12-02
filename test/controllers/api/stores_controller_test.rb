require 'test_helper'

class Api::StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get api_stores_url, as: :json
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post api_stores_url, params: { store: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show store" do
    get api_store_url(@store), as: :json
    assert_response :success
  end

  test "should update store" do
    patch api_store_url(@store), params: { store: {  } }, as: :json
    assert_response 200
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete api_store_url(@store), as: :json
    end

    assert_response 204
  end
end
