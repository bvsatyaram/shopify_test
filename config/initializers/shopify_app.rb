ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "dcd0a100581c1346243ed8d3120500fa"
  config.secret = "585af7a5bdd0d146fc7168218e2c0c62"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
