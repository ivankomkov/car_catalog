class HomeController < ApplicationController

	def index
    	@cars = Car.all
    	@car = Car.first
	    @comment = Comment.new
	    @like =  ( current_user && current_user.like_for(@car)) || Like.new


	    respond_to do |format|
	    	format.html { render action: 'index' }
	    end
	end

	def edit

	end

end