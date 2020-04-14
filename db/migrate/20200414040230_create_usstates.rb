class CreateUsstates < ActiveRecord::Migration[6.0]
  def change
    create_table :usstates do |t|
      t.string :name
      t.float :hours
      t.string :periodicity
      t.string :conditions
      t.string :link

      t.timestamps
    end
  end
end
