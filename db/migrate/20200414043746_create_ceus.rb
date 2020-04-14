class CreateCeus < ActiveRecord::Migration[6.0]
  def change
    create_table :ceus do |t|
      t.string :title
      t.string :number
      t.float :hours
      t.string :state
      t.string :instructor_name
      t.string :provider_name

      t.timestamps
    end
  end
end
