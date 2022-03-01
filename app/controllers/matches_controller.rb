class MatchesController < ApplicationController
  before_action :find_players, only: :create
  after_action :set_score, only: :create

  def create
    Match.create!(player_one_id: @player_one.id, player_two_id: @player_two.id, winner_id: @player_one.id)
  end

  private

  def find_players
    @player_one = Player.find_by(name: params[:win])
    @player_two = Player.find_by(name: params[:lose])
  end

  def set_score
    @player_one_stat = Stat.find_or_create_by(player_id: @player_one.id)
    @player_two_stat = Stat.find_or_create_by(player_id: @player_two.id)

    return if params[:draw]

    @player_one_stat.update(win: (@player_one.stat.win + 1))
    @player_two_stat.update(loss: (@player_two.stat.loss + 1))
  end
end
