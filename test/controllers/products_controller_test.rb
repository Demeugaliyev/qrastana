require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { buy_date: @product.buy_date, category: @product.category, create_date: @product.create_date, experation_date: @product.experation_date, inventory: @product.inventory, name: @product.name, plaints_sum: @product.plaints_sum, route_id: @product.route_id, when_update: @product.when_update, which_user: @product.which_user } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { buy_date: @product.buy_date, category: @product.category, create_date: @product.create_date, experation_date: @product.experation_date, inventory: @product.inventory, name: @product.name, plaints_sum: @product.plaints_sum, route_id: @product.route_id, when_update: @product.when_update, which_user: @product.which_user } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
