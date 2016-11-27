class ClubsController < ApplicationController
	before_filter :authenticate_user!

	def show
		@clubs = Club.all
	end

	# def show
	# 	@users = User.where(params[:id])
	# end

	def create
		c = Club.new
		c.name = params[:club][:name]
		c.save
		redirect_to current_user
	end

end