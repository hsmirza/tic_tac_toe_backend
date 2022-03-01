class PlayersController < ApplicationController

  def create
    Player.find_or_create_by(name: params[:name])
  end
end
