class CreateIteams < ActiveRecord::Migration[6.0]
  def change
    create_table :iteams do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :color
      t.integer :quantity

      t.timestamps
    end
  end
end
