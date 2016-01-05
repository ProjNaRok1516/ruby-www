class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
