class ReviewsController < ApplicationController

def index
  @restaurant = Restaurant.find(params[:restaurant_id])
  @reviews = @restaurant.reviews
end

# def new
#   @restaurant = Restaurant.find(params[:restaurant_id])
#   @review = Review.new
# end

def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant_id = @restaurant.id
  if @review.save
    redirect_to restaurants_path
  else
    render :new
  end
end

private

def review_params
  params.require(:review).permit(:content, :rating, :restaurant_id)
end

end
