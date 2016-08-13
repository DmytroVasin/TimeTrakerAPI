class PeriodsController < ApplicationController

  # GET /periods
  def index
    @periods = Period.all

    render json: @periods
  end
end
