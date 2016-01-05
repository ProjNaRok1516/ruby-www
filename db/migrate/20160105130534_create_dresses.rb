class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.decimal10 :cost
      t.decimal2 :cost
      t.references :style, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
