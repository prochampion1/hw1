class CreateSortBies < ActiveRecord::Migration[5.0]
  def change
    create_table :sort_bies do |t|

      t.timestamps
    end
  end
end
