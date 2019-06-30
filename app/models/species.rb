class Species < ApplicationRecord
  has_many :products
  has_many :qualities, through: :exportation_standards

  validates :name, presence: true, uniqueness: true
end
