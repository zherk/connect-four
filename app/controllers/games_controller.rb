class GamesController < ApplicationController
  # GET /games/1
  # GET /games/1.json
  def show
    session[:user_id] = User.find(params[:id]).id
    @game =  Game.first
    session[:game_id] = @game.id
  end

end
