class ChangeMapsColumnsToSingular < ActiveRecord::Migration[6.0]
  def change
    rename_column :maps, :clients_id, :client_id
    rename_column :maps, :usstates_id, :usstate_id
    rename_column :maps, :ceus_id, :ceu_id
  end
end
