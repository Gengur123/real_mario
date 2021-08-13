
class HomesController < ApplicationController

  def index
    @most_reviewed = Product.most_reviews
    @recent = Product.most_recent
    @usa = Product.made_in_usa
    render :index
  end
  
  def show
    render :show
  end
end