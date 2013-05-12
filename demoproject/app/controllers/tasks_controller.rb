class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.new(params[:task])
		if @task.save
			flash[:notice] = "Successfully Created Task!"
			redirect_to projects_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def show
		@task = Task.find(params[:id])
	end

	def index
		@tasks = Task.find(:all, :order => 'due_at, id', :conditions => ["name LIKE ?", "%#{params[:query]}%"])
		@task_months = @tasks.group_by { |t| t.due_at.beginning_of_month }
	end
end
