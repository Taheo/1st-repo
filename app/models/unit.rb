class Unit < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 6}
  belongs_to :unit_type
end
