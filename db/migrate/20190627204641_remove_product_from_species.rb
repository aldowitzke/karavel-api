class RemoveProductFromSpecies < ActiveRecord::Migration[5.2]
  def change
    remove_reference :species, :product, foreign_key: true
  end
end
