class HomeListingsController < ApplicationController
	
	def index
		@all_listings = HomeListing.all
		render :index
	end

	def new
		@new_home_listing = HomeListing.new
		render :new
	end

	def create
		@user_id = current_user.id
		@new_home_listing = HomeListing.new(home_listing_params)
		@new_home_listing.user = current_user
		@new_home_listing.save		
	end

	def edit
	end

	def show
		@listing = HomeListing.find_by(id: params[:id])
		render :show
	end

#_______________________________________________________________________
	private

	def home_listing_params
		params.require(:home_listing).permit(:description, :location, :beds, :baths, :sqft, 
			:pets, :capacity, :is_active, :avatar)
	end
	
end
