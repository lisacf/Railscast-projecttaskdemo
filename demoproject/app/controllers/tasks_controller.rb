class TasksController < ApplicationController
	def new
		@task = Task.new
		# @task.due_at = "2012-05-05 8:00AM"
		2.times { @task.comments.build }
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
		@task = Task.find(params[:id])
		2.times { @task.comments.build }
	end

	def update
	    @task = Task.find(params[:id])
	    if @task.update_attributes(params[:task])
	      redirect_to @task, notice: "Successfully updated task."
	    else
	      render :edit
	    end
	end

	def archive
		calcyear = Time.now.year.to_i - params[:year].to_i
		@tasks = Task.where("due_at < ?", DateTime.now.years_ago(calcyear))
	end

	def destroy
		@task = Task.find(params[:id])
    	@task.destroy
    	redirect_to tasks_url, notice: "Successfully destroyed task."
	end

	def show
		@task = Task.find(params[:id])
	end

	def index
		@tasks = Task.find(:all, :order => 'due_at, id', :conditions => ["name LIKE ?", "%#{params[:query]}%"])
		@task_months = @tasks.group_by { |t| t.due_at.beginning_of_month }
	end
end
