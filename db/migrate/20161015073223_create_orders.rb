class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :fooditem, foreign_key: true
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
