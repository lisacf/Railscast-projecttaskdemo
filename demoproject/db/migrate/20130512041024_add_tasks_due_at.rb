class AddTasksDueAt < ActiveRecord::Migration
  def up
  	  	add_column :tasks, :due_at, :datetime
  	Task.reset_column_information
  	Task.all.each do |t|
  		t.update_attribute :due_at, t.created_at
  	end
  end

  def down
  	remove_column :tasks, :due_at
  end
end
