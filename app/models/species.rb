class Species < ApplicationRecord
  has_many :qualities, through: :exportation_standards
  has_many :exportation_standards, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
