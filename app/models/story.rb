class Story < ActiveRecord::Base
  enum story_type: { estimated: 0, done: 1, in_progress: 2, to_estimate: 3 }

  belongs_to :period
  has_many :tasks
  has_many :current_week_tasks, -> { where(created_at: DateTime.current.beginning_of_week..DateTime.current.end_of_week) }, class_name: 'Task'

  validates :story_type, :title, presence: true
  validates :story_type, inclusion: { in: Story.story_types.keys }
end
