class AddSectionToFooditems < ActiveRecord::Migration[5.0]
  def change
    add_column :fooditems, :section, :string
    #add_column :ten table, :ten cot ma cau muon them, kieu du lieu
    
  end
end
