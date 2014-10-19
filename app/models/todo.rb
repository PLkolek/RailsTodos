class Todo < ActiveRecord::Base
  attr_accessor :scheduled

  enum priority: [:high, :medium, :low]
  validates :priority, presence: true
  validates :title, presence: true
  with_options if: :scheduled? do |todo|
    todo.validates      :time_from, presence: true
    todo.validates      :time_to, presence: true
    todo.validates_time :time_from, :before => :time_to
    todo.validates_time :time_to
  end

  def scheduled?
    logger.debug "scheduled is #{scheduled}"
    scheduled != '0'
  end
end
