class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.decimal :price_per_m2
    end
	add_reference :dresses, :order, index: true, foreign_key: true
	add_reference :dresses, :style, index: true, foreign_key: true
	add_reference :dresses, :material, index: true, foreign_key: true
  end
end
