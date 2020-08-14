module Concerns::Findable 
  
  def self.find_by_name(name)
    self.all.select { |songs| songs.name == self }  
  end 
  
  
  
  
  
  
end 