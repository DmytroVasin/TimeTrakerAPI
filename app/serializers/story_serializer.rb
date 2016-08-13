class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :story_type, :period_id, :period_name

  def period_name
    object.period.name
  end
end
