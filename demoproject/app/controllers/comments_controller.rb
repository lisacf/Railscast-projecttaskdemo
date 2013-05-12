class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end
	def create
		@task = Task.find(params[:task_id])
		@comment = Comment.new(params[:comment])
		if @comment.save
			flash[:notice] = "Successful comment"
			redirect_to task_path(@comment.task_id)
		end
	end
	def edit
	end
	def update
	end
	def destroy
	end
	def show
		@task = Task.find(params[:task_id])
		redirect_to task_path(@task.id)
	end
	def index 
	end
end
