class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.decimal :price, :precision => 8, :scale => 2
      t.date :release_date

      t.timestamps
    end
  end
end
