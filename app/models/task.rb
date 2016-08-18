class Task < ActiveRecord::Base
  belongs_to :story

  def year_month_day
    self.created_at.strftime('%Y/%m/%d')
  end

  def as_json
    GraphLogWorkSerializer.new(self).as_json
  end
end
