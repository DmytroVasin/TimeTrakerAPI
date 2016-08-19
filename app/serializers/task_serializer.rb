class TaskSerializer < ActiveModel::Serializer
  attributes :id, :minutes, :comment, :task_date

  def task_date
    object.task_date_with_format
  end
end
