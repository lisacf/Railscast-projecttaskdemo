class Project < ActiveRecord::Base
  attr_accessible :name, :tasks_count

  has_many :tasks
end
