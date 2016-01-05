class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :data
      t.decimal :total_cost
      t.integer :status
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
