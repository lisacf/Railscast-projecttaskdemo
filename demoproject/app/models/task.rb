class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id, :due_at, :due_at_string, :comments_attributes, :counter_cache => true

  belongs_to :project
  has_many :comments
  accepts_nested_attributes_for :comments, allow_destroy: true

  #stringify_time :due_at

  def due_at_string
    due_at.to_s(:db) unless due_at.nil?	
  end

  def due_at_string=(due_at_str)
  	self.due_at = Time.parse(due_at_str)
  rescue ArgumentError
  	@due_at_invalid = true
  end

  def validate
  	errors.add(:due_at, "is invalid") if @due_at_invalid
  end
end
