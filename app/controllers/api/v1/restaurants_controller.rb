class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @restaurants = policy_scope(Restaurant)
    render json: @restaurants, status: 200
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
    render json: @restaurant, status: 200
  end

  def search
    @restaurant = Restaurant.find_by(name: params["name"].delete('\\"'))
    if @restaurant
      authorize @restaurant
      render json: @restaurant, status: 200
    end
    # Will add error message for when the restaurant cannot be found
  end
end
