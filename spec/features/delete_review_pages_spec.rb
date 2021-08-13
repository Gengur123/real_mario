# require 'rails_helper'

# describe "the delete review process" do
# it "deletes a review" do
#   test_product = Product.new({:name => "Car", :country_of_origin => "Japan", :cost => 10000})
#   test_product.save
#   test_review = Review.new({:author => "Bob", :rating => 5, :content_body => "This car go very fast vrooom vroom vrromm vrrommmm skrrttt", :product_id => test_product.id})
#   test_review.save
#   visit product_review_path(test_product, test_review)
#   click_on 'Delete'
#   expect(page).to_not have_content 'Bob'
#   end
# end