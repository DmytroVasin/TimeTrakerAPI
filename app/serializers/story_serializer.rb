class StorySerializer < ActiveModel::Serializer
  attributes :id, :period, :title, :description, :story_type
end
