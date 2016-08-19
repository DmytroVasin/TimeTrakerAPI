class TaskSerializer < ActiveModel::Serializer
  attributes :id, :minutes, :comment, :task_date
end
