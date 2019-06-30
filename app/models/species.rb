class Species < ApplicationRecord
  has_many :qualities, through: :exportation_standards

  validates :name, presence: true, uniqueness: true
end
