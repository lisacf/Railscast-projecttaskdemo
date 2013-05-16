class UpdateTasksCount < ActiveRecord::Migration
  def up
  	Project.reset_column_information
  	Project.all.each do |p|
  		p.update_attribute :tasks_count, p.tasks.length
  	end
  end

  def down
  end
end
