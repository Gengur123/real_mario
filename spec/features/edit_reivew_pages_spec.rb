describe "the edit review process" do
  it "changes the review" do
    test_product = Product.new({:name => "Car", :country_of_origin => "Japan", :cost => 10000})
    test_product.save
    test_review = Review.new({:author => "Bob", :rating => 5, :content_body => "This car go very fast vrooom vroom vrromm vrrommmm skrrttt", :product_id => test_product.id})
    test_review.save
    visit product_path(test_product)
    click_on 'Bob'
    click_on 'Edit review'
    fill_in 'Author', :with => 'Jack Ma'
    fill_in 'Content body', :with => "This car go very fast vrooom vroom vrromm vrrommmm skrrttt"
    fill_in 'Rating', :with => 5
    click_on 'Update Review'
    expect(page).to have_content 'Jack Ma'
  end
end