class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :building
      t.string :flat
      t.string :city
      t.string :postalcode

      t.timestamps null: false
    end
  end
end
