require 'test_helper'

class ShopifyProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get shopify_products_create_url
    assert_response :success
  end

end
