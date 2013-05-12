class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id, :counter_cache => true

  belongs_to :project
  has_many :comments

end