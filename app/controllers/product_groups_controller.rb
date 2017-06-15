class ProductGroupsController < ShopifyApp::AuthenticatedController
  def index
    products = cache :all_products do
      ShopifyAPI::Product.find(:all, params: {limit: 250, fields: [:id, :title]})
    end

    processed_products = []
    if params[:term]
      products.select do |prod|
        processed_products.push({id: prod.id, value: prod.title}) if prod.title.downcase.include?(params[:term].to_s.downcase)
      end
    end

    render json: processed_products
  end

  def show
    @product_group = ProductGroup.find(params[:id])
  end
end
