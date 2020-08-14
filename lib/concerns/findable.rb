module Concerns::Findable 
  
  def find_by_name(name)
    self.all.select { |songs| songs.name == self }  
  end 
  
  
  
  
  
  
end 