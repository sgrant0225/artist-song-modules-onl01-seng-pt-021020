module Memorable
  module ClassMethods
  
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
   end
  end
  
  module InstanceMethod
    def initialize 
    end  
  end
end  