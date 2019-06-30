class Product < ApplicationRecord
  has_one :specie
  accepts_nested_attributes_for :specie

  validates :name, presence: true, uniqueness: true
end
