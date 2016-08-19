class GraphSerializer < ActiveModel::Serializer
  attributes :id, :title, :story_type, :log_work

  def log_work
    object.current_week_tasks.group_by(&:task_date_with_format)
  end
end
