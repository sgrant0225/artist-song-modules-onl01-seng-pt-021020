module Findable 
 
 def find_by_name(name)
    self.all.detect{|a| a.name == name}  
  end
end  

#this method will work for both class methods in Song and the Artist class