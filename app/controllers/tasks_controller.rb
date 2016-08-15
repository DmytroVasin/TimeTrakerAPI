class TasksController < ApplicationController
  before_action :set_story, only: [:index, :create]

  # GET /stories/:story_id/tasks
  def index
    @tasks = @story.tasks

    render json: @tasks
  end

  # POST /stories/:story_id/tasks
  def create
    @task = @story.tasks.new(task_params)

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  private
    def set_story
      @story = Story.find(params[:story_id])
    end

    def task_params
      params.require(:task).permit(:time, :comment)
    end
end
