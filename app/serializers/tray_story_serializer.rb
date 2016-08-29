class TrayStorySerializer < ActiveModel::Serializer
  attributes :id, :title, :story_type, :spent_time

  def spent_time
    object.tasks.to_a.sum(&:minutes)
  end
end
