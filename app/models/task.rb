class Task < ActiveRecord::Base
  belongs_to :story

  validates :minutes, numericality: { greater_than: 0 }

  def task_date_with_format
    self.task_date.strftime('%Y/%m/%d')
  end

  def as_json
    GraphLogWorkSerializer.new(self).as_json
  end
end
