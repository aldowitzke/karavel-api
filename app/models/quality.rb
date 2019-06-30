class Quality < ApplicationRecord
  has_many :species, through: :exportation_standards
end
