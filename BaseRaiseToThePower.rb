
class BaseRaiseToThePower
    
  def power(base,exponent)
      if is_numeric?(base) && is_numeric?(exponent)
        return powerLogic(base,exponent)
      elsif is_numeric?(base)==false && is_numeric?(exponent)==false
        puts("#{base} and #{exponent} are invalid input...")
      elsif is_numeric?(base)==false 
        puts("base \''#{base}\'' is invalid input...")
      else
        puts("Exponent #{exponent} is an invalid input...")   
      end        
  end
  private
  def powerLogic(base,exponent)
      total=0;
      if(base==0)&&(exponent==0)
        #raise 'error...' #We could would raise an error
        puts("error...") #to stop the application from crashing I would display a classic 'Error..." message
      elsif (base == 0) && (exponent >= 0)
        total=0  
      elsif (base > 0 ) && (exponent >= 0)  
        total=raiseToThePower(base,exponent)
      elsif(base > 0 ) && (exponent < 0) 
         total=raiseToTheNegativePower(base,exponent)              
      end  
      displayResult(base,exponent,total)
      return total 
     
  end
  
  def raiseToThePower(base,exponent)
      total=0
     for index in 0..exponent do
          if(index==0)
            total=1
             #puts("total= #{total}")
          elsif                       
            total =total * base
             #puts("total= #{total}")
          end  
     end
     return total
  end  
   def raiseToTheNegativePower(base,exponent)
      total=1
      totalLoop=-1*exponent      
     for index in 0..totalLoop-1 do                               
         total =total.to_f / base.to_f
         #puts("total= #{total}")          
     end
     return total
  end  
  def displayResult(base,exponent,total)
      if(base==0)&&(exponent==0)
         puts("#{base} raised to the power of #{exponent} is an Error")
      else  
         puts("#{base} raised to the power of #{exponent} = #{total}")
     end       
  end 
  def is_numeric?(s)
        begin
          Float(s)
        rescue
          false # not numeric
        else
          true # numeric
        end
   end
end

myClass=BaseRaiseToThePower.new
myClass.power(0,0)
myClass.power(0,4)
myClass.power(1,4)
myClass.power(2,4)
myClass.power(3,4)
myClass.power(4,4)
myClass.power(8,-1)
myClass.power(5,-3)
myClass.power(8,-1)
myClass.power("a",-1)
