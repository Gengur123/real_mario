require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:cost) }
  it { should validate_presence_of(:country_of_origin) }

  it("titleizes stuff") do
    product = Product.create({name: "car", cost: 1000.00, country_of_origin: "Japan"})
  end

end