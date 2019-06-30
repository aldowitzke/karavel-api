class ExportationStandard < ApplicationRecord
  belongs_to :species
  belongs_to :quality

  validates :value, presence: true
end
