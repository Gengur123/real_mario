Product.destroy_all
Review.destroy_all


# end
50.times do |product_instance|
  product = Product.create!(name: Faker::Hipster.word,
                            cost: Faker::Number.between(from: 1, to: 10000),
                            country_of_origin: Faker::Address.country)
  
  5.times do |review_instance|
    Review.create!(author: Faker::Hipster.word,
                  content_body: 
                  Faker::Lorem.paragraph_by_chars(number: 250, supplemental: false),
                  rating: Faker::Number.between(from:1, to: 5),
                  product_id: product.id)
  end
end
