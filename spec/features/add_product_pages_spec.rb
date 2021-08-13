# require 'rails_helper'

# describe "the add product process" do
#   it "adds a new product" do
#     make_test_admin
#     visit products_path
#     click_link 'create new products'
#     fill_in 'Name', with: 'Car'
#     fill_in 'Cost', with: '10000'
#     fill_in 'Country of origin', with: 'Japan'
#     click_button 'Create Product'
#     expect(page).to have_content 'Product successfully added!'
#     expect(page).to have_content 'Car'
#   end

#   it "gives an error when no name is entered" do
#     visit new_product_path
#     click_on 'Create Product'
#     expect(page).to have_content "Name can't be blank"
#   end
# end