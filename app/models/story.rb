class Story < ActiveRecord::Base
  enum story_type: { yellow: 0, green: 1, red: 2, grey: 2 }

  validates :story_type, :period, :title, presence: true

  validates :period, numericality: true
  validates :story_type, inclusion: { in: Story.story_types.keys }
end
