class TrayStoriesController < ApplicationController
  # GET /tray_stories
  def show
    @tray_stories = Story.includes(:tasks).all

    render json: @tray_stories, each_serializer: TrayStorySerializer
  end
end
