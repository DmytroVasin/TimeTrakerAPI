class TaskSerializer < ActiveModel::Serializer
  attributes :id, :time, :comment
end
