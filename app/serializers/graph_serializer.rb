class GraphSerializer < ActiveModel::Serializer
  attributes :id, :title, :story_type, :created_at

  has_many :log_work, serializer: GraphLogWorkSerializer

  def log_work
    object.current_week_tasks
  end
end

# 'Mon 17/Aug': [],
# 'Tuh 18/Aug': [],
# 'Wed 19/Aug': []

