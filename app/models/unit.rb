class Unit < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 6}
  validates :size, presence: true
  validates :unit_type, presence: true
  belongs_to :unit_type


  def cost
    result = size * unit_type.cost
    result += 10 if standar?
    result += 10 if champion?
    result += 10 if musician?
    result
  end

  def command
    pusty = []
    pusty << 'sztandar' if standar?
    pusty << 'czempion' if champion?
    pusty << 'muzyk' if musician?
    pusty.join(', ')
  end
end
