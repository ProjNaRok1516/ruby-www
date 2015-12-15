class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
    end
	add_reference :addresses, :client, index: true, foreign_key: true
  end
end
