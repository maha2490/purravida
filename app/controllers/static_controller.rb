class StaticController < ApplicationController
	def index
		@use_container_fluid = true
		render :index
	end

	def scroll_test
		render :scroll_test
	end

end
