class Cart < ApplicationRecord
  has_many :lines, dependent: :destroy
  has_many :products, through: :lines

  def sub_total
    sum = 0
    self.lines.each do |line|
      sum += line.total_price
    end
    return sum
  end
end
