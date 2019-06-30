class RemoveSpeciesFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :species, foreign_key: true
  end
end
