class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :f_name
      t.string :l_name
      t.string :birth_month
      t.string :birth_day
      t.string :birth_year
      t.string :license

      t.timestamps
    end
  end
end
