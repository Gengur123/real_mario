require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    visit products_path
    click_link 'create new products'
    fill_in 'Name', :with => 'Car'
    fill_in 'product[country_of_origin]', :with => 'Japan'
    fill_in 'Cost', :with => 1000.00
    click_on 'Create Product'
    expect(page).to have_content 'Car'
    expect(page).to have_content 'Product successfully added!'
  end
  
  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end