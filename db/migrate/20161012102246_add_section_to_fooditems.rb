class AddSectionToFooditems < ActiveRecord::Migration[5.0]
  def change
    add_column :fooditems, :section, :string
    
    
  end
end
