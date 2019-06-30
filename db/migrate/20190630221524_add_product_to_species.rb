class AddProductToSpecies < ActiveRecord::Migration[5.2]
  def change
    add_reference :species, :product, foreign_key: true
  end
end
