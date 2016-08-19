class TaskSerializer < ActiveModel::Serializer
  attributes :id, :time, :comment, :task_date
end
