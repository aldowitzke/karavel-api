class Quality < ApplicationRecord
  has_many :species, through: :exportation_standards
  has_many :exportation_standards, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
end
