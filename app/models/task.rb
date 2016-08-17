class Task < ActiveRecord::Base
  belongs_to :story

  scope :for_particular_date, ->(dateNumber){ where("DATE(created_at) = ?", dateNumber) }
end
