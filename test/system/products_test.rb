require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Buy Date", with: @product.buy_date
    fill_in "Category", with: @product.category
    fill_in "Create Date", with: @product.create_date
    fill_in "Experation Date", with: @product.experation_date
    fill_in "Inventory", with: @product.inventory
    fill_in "Name", with: @product.name
    fill_in "Plaints Sum", with: @product.plaints_sum
    fill_in "Route", with: @product.route_id
    fill_in "When Update", with: @product.when_update
    fill_in "Which User", with: @product.which_user
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Buy Date", with: @product.buy_date
    fill_in "Category", with: @product.category
    fill_in "Create Date", with: @product.create_date
    fill_in "Experation Date", with: @product.experation_date
    fill_in "Inventory", with: @product.inventory
    fill_in "Name", with: @product.name
    fill_in "Plaints Sum", with: @product.plaints_sum
    fill_in "Route", with: @product.route_id
    fill_in "When Update", with: @product.when_update
    fill_in "Which User", with: @product.which_user
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
