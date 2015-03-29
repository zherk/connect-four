class Board < ActiveRecord::Base
  belongs_to :game
  has_many :columns
  before_create :create_columns

  def create_columns
    i = 0
    board = self
    ('a'..'g').each do |name|
      board.columns << Column.new(column_name: name, col_ordinal: i)
      i = i+1
    end
  end
end
