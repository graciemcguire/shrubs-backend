class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
