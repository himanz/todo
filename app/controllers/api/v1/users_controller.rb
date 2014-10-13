module Api
	module V1
	  class UsersController < ApplicationController
	  	respond_to :json

	  	def index
	  		respond_with User.all
	  	end

	  	def show
	  		respond_with User.find(params[:id])
	  	end

	  	def create
	  		@user = User.create(task_params)
	  		if @User.save
	  			respond_with :api, @user
	  		end
	  	end

	  	private

	  	def user_params
	  		params.require(:user).permit(:email, :password, :password_confirmation)
	  	end
	  end
	end
end

