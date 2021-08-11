# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all

# 50.times do
#   Product.create!(name: Faker::Hipster.word,
#                   cost: Faker::Number.between(from: 1, to: 10000),
#                   country_of_origin: Faker::Address.country)

#   250.times do |review_instance|
#     Review.create!(author: Faker::Hipster.name,
#                   content_body: 
#                   Faker::Lorem.paragraph_by_chars(number: 250, supplemental: false),
#                   rating: Faker::Number.between(from:1, to: 5),
#                   product_id: product.id)
#   end
# end
50.times do |product_instance|
  product = Product.create!(name: Faker::Hipster.word,
                            cost: Faker::Number.between(from: 1, to: 10000),
                            country_of_origin: Faker::Address.country)
  
  250.times do |review_instance|
    Review.create!(author: Faker::Hipster.word,
                  content_body: 
                  Faker::Lorem.paragraph_by_chars(number: 250, supplemental: false),
                  rating: Faker::Number.between(from:1, to: 5),
                  product_id: product.id)
  end
end
