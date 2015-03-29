class Game < ActiveRecord::Base
  has_one :board
  before_create :create_board

  def create_board
    self.board = Board.new
  end
end
