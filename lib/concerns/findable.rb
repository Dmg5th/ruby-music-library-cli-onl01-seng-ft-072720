module Concerns::Findable 
  
  def find_by_name(name)
    self.all.find { |song| song.name == name }  
  end 
  
  def 
  
  
  
  
  
  
end 


# def find_by_name(name)
#     self.all.detect {|song| song.name == name}
#   end