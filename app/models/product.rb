class Product < ApplicationRecord
  has_one :specie

  accepts_nested_attributes_for :specie
end
