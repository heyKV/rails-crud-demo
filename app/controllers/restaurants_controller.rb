class RestaurantsController < ApplicationController

# before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.create(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
    # Will raise ActiveModel::ForbiddenAttributesError
    #@restaurant = Restaurant.create(params[:restaurant])
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
    # Will raise ActiveModel::ForbiddenAttributesError
    # @restaurant.update(params[:restaurant]) restaurant_params
  end
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # no need for app/views/restaurants/delete.html.erb
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :stars)
  end

end
