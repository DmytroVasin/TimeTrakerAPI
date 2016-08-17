class GraphsController < ApplicationController

  # GET /graph
  def show
    @graph = Story.includes(:current_week_tasks).all

    render json: @graph, each_serializer: GraphSerializer
  end
end
