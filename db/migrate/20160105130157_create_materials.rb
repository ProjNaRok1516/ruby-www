class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :price_per_m2

      t.timestamps null: false
    end
  end
end
