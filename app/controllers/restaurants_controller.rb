class RestaurantsController < ApplicationController
    before_action :set_post, only: [:edit, :update, :destroy]

    def index
      @restaurants = Restaurant.all
    end
  
    def new
      @restaurant = Restaurant.new
      @user_id = "1"
    end
  
    def create
      @restaurant = Restaurant.new(post_params)
      # @restaurant.user_id = current_user.id
      if @restaurant.save
        redirect_to restaurants_url
      else
        render :new
      end
    end
  
    def set_post
      @restaurant = Restaurant.find_by(id: params[:id])
    end
  
    def edit
    end
  
    def update
      if @restaurant.update(post_params)
        redirect_to restaurants_url
      else
        render :edit
      end
    end
  
    def destroy
      @restaurant.destroy
      redirect_to restaurants_url
    end
  
    private
    def post_params
      params.require(:restaurant).permit(:user_id, :name, :comment, :url)
    end
end
