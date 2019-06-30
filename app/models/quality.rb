class Quality < ApplicationRecord
  has_many :species, through: :exportation_standards

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
