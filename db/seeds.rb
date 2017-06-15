# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def dot
  print "."
end

def seed_product_group(name, shopify_product_ids = [])
  product_group = ProductGroup.find_or_create_by(name: name)
  dot

  shopify_product_ids.each do |sp_id|
    ShopifyProduct.find_or_create_by(shopify_product_id: sp_id) do |sp|
      sp.product_group = product_group
    end
    dot
  end
end

puts "Seeding Product groups"
seed_product_group('Recommended Accessories', ['11179852036', '11179872900', '11179884036', '11179894980'])

puts ""
puts "Done."
