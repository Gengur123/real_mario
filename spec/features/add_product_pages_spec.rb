require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    make_test_admin
    visit products_path
    click_link 'create new products'
    fill_in 'product_name', :with => 'Car'
    fill_in 'Cost', :with =>  '10000'
    fill_in 'Country of origin', :with =>  'Japan'
    click_button 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Car'
  end
    it "should be able to adds a new product because not admin" do
      make_test_user
      visit products_path
      click_link 'create new products'
      expect(page).to have_content 'Admins only'
    end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_button 'commit'
    expect(page).to have_content "There was a problem signing in. Please try again."
  end
end