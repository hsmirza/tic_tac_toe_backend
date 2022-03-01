class StatsController < ApplicationController
  def index
    render json: Stat.all, each_serializer: StatSerializer
  end
end
