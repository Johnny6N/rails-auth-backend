class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.references :clients, null: false, foreign_key: true
      t.references :usstates, null: false, foreign_key: true
      t.references :ceus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
