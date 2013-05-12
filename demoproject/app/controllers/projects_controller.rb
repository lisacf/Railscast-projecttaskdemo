class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end
	def create
		@project = Project.new(params[:project])
		if @project.save
			flash[:notice]="Successfully Created a Project"
			redirect_to project_path(@project)
		else
			render :new
		end
	end
	def edit
	end
	def update
	end
	def destroy
		Project.destroy(params[:id])
	end
	def show
		@project = Project.find(params[:id])
	end
	def index 
		@projects = Project.all
	end
end
