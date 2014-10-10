module Api
	module V1
	  class TasksController < ApplicationController
	  	respond_to :json

	  	def index
	  		respond_with Task.all
	  	end

	  	def show
	  		respond_with Task.find(params[:id])
	  	end

	  	def create
	  		@task = Task.create(task_params)
	  		if @task.save
	  			respond_with :api, @task
	  		end
	  	end

	  	private

	  	def task_params
	  		params.require(:task).permit(:message)
	  	end
	  end
	end
end
