class Story < ActiveRecord::Base
  enum story_type: { yellow: 0, green: 1, red: 2, grey: 2 }

  belongs_to :period

  validates :story_type, :title, presence: true
  validates :story_type, inclusion: { in: Story.story_types.keys }
end
