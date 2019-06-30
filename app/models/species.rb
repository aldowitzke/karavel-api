class Species < ApplicationRecord
  has_many :products
  has_many :qualities, through: :exportation_standards
end
