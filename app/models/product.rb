class Product < ApplicationRecord
  has_one :species, dependent: :destroy
  accepts_nested_attributes_for :species

  validates :name, presence: true, uniqueness: true
end
