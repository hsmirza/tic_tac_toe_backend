class Player < ApplicationRecord
  validates :name, presence: true

  has_one :stat
  has_many :matches
end
