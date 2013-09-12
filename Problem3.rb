#Largest prime factor
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
#

class Problem3
  def largestPrimeFactor(inputNumber)
      if is_Digit(inputNumber)
        largestPrimeFactor=largestPrimeFactorLogic(inputNumber)
        puts("The largest prime factor for #{inputNumber} is #{largestPrimeFactor}")
        return largestPrimeFactor
      else
         puts(" '#{inputNumber}' is not a valid numberical input")
      end
     
  end
  private
  def largestPrimeFactorLogic(inputNumber)
      array =Array.new
      currentNumber=inputNumber
      for index in 1..inputNumber do            
           if modulusEqualZero(inputNumber,index)
              currentNumber=currentNumber / index
              array.push(index)
              #puts("current prime number= #{index}")  
              #puts(" 'currentNumber' number= #{currentNumber}")  
              if currentNumber < index 
                 break
              end 
           end    
      end
      return array.last
  end
  def modulusEqualZero(firstNumber,secondNumber)
      if(firstNumber % secondNumber)==0
        return true
      else
        return false
      end   
   end  
   def is_Digit(input)
    !!Float(input) rescue false
  end
end

problem3=Problem3.new()
problem3.largestPrimeFactor("a")
problem3.largestPrimeFactor(13195)
problem3.largestPrimeFactor(600851475143)
