require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    make_test_admin
    test_product = Product.create({:name => "Car", :cost => "10000", :country_of_origin => "Japan"})
    visit products_path
    click_on ("Car")
    click_on 'Edit'
    fill_in "Name", :with => "Wagon"
    fill_in "Cost", :with => "1"
    fill_in "product[country_of_origin]", :with => "1969"
    click_on 'Update Product'
    expect(page).to have_content "Wagon"
  end
end