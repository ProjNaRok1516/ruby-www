class CreateDresses < ActiveRecord::Migration
  def change
    create_table :desses do |t|
      t.string :name
      t.decimal :price_per_m2
    end
	add_reference :desses, :order, index: true, foreign_key: true
	add_reference :style, :order, index: true, foreign_key: true
	add_reference :material, :order, index: true, foreign_key: true
  end
end
