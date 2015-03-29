class Column < ActiveRecord::Base
  belongs_to :board
  has_many :rows

  def drop_piece(user)
    row_number = self.rows.size + 1
    if row_number > 6
      return -1
    end
    rows << Row.create(user: user, row_number: row_number)
    self.save!
    return row_number
  end

end
