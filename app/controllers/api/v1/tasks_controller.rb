module Api
	module V1
	  class TasksController < ApplicationController
	  	respond_to :json

	  	def index
	  		respond_with Task.all
	  	end

	  	# def create
	  	# 	respond_with Task.create(task_params)
	  	# end

	  	# private

	  	# def task_params
	  	# 	params.require(:task).permit(:message)
	  	# end
	  end
	end
end
