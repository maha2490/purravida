class ProfilesController < ApplicationController

	def user_profile
		@user_id = current_user.id

		@name = current_user.name

		@email = current_user.email
		render :user_profile	
	end

#____SITTER VIEWS ___________________________________________________________________

	def index
		@active_sitters = User.where(is_active_sitter: 'true')
		render :index
	end

	def show
		# show updated user profile w/ sitter settings
		@user = current_user
		render :show
	end
	
	def new
		# DO I NEED THIS?
		@user = current_user
		render :new
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update_attributes(user_params)
		@user.save
	end


	# THINKING I MIGHT NOT USE .....
	# def create
	# 	@new_home_listing = HomeListing.new(home_listing_params)
	# 	@new_home_listing.user = current_user
	# 	@new_home_listing.save		
	# 	redirect_to / use modal?
	# end

#_______________________________________________________________________
	private

	def user_params
		params.require(:user).permit(:tagline, :about_me, :base_rate, :location, :is_active_sitter)
	end
end
