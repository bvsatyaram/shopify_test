class ShopifyProductsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    shopify_product = ShopifyProduct.find_or_create_by(shopify_product_params)
    product_name = params[:shopify_product][:product_title]

    render json: {product: {name: product_name}}
  end

private
  def shopify_product_params
    params.require(:shopify_product).permit(:product_group_id, :shopify_product_id)
  end
end
