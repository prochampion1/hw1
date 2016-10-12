class CreateFooditems < ActiveRecord::Migration[5.0]
  def change
    create_table :fooditems do |t|
      t.text :description
      t.string :name
      t.decimal :price
      t.string :ima_url

      t.timestamps
    end
  end
end
