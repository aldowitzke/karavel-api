class CreateExportationStandards < ActiveRecord::Migration[5.2]
  def change
    create_table :exportation_standards do |t|
      t.references :species, foreign_key: true
      t.references :quality, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
