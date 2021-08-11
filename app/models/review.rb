class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates :content_body, presence: true
  validates_length_of :content_body, maximum: 250, minimum: 50
  validates :rating, presence: true
  validates :product_id, presence: true
end 