class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 7, :scale => 2
      t.text :description

      t.timestamps
    end
  end
end
