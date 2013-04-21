class Sname < ActiveRecord::Base
  attr_accessible :name ,:rank, :count, :prop100k, :cum_prop100k, :pctwhite, :pctblack, :pctapi, :pctaian, :pct2prace, :pcthispanic

#method that is importing the csv file to the table  
def self.import(file) 
  CSV.foreach(file.path, :headers => true) do |row|
  Sname.create!(row.to_hash)
  end
end

def self.search(search)

  if search 
    where("name  REGEXP?",  "[a-z]"+"#{search}""|" "^"+"#{search}"+"$" )
  # this is the REGUlar expression  that searchs the post string 
  #else
  # find(:all)

  end
 

end
end




