class BoardsController < ApplicationController
  before_action :validate_game_turn

  def drop_piece
    @board = @game.board
    @column = @board.columns.where(col_ordinal: params[:column]).first
    @row_number = @column.drop_piece @user
    if @row_number != -1
      change_turn
      render 'drop_piece', format: 'js'
    else
      flash[:error] = 'The space is full'
      render 'error'
    end
  end

  private

  def validate_game_turn
    @game = Game.find(session[:game_id])
    @user = User.find(session[:user_id])
    if @game.next_turn != @user.name
      flash[:error] = "It's not your turn!'"
      render 'error'
    end
  end

  def change_turn
    next_user = User.where.not(id: @user.id).first
    @game.next_turn = next_user.name
    @game.save
  end
end
