class Unit < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 6}
  validates :size, presence: true
  belongs_to :unit_type
end
