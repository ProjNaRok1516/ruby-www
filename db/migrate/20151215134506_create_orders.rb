class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :data
      t.decimal :cost
      t.integer :status
    end
	add_reference :orders, :client, index: true, foreign_key: true
  end
end
