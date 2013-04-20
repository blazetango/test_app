class AddDetailsSname < ActiveRecord::Migration
  def up
   add_column :snames, :rank, :integer
   add_column :snames, :count,:integer
   add_column :snames, :prop100k,:integer
   add_column :snames,:cum_prop100k,:integer
   add_column :snames, :pctwhite, :integer
   add_column :snames, :pctblack,:integer
   add_column :snames,:pctapi,:integer
   add_column :snames,:pctaian, :integer
   add_column :snames,:pct2prace,  :integer
   add_column :snames,:pcthispanic,:integer
  end

  def down
  end
end

  
