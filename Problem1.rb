# Problem1 Multiples of 3 and 5
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

class Problem1
	def multiplesOf3And5(upperIntLimit=10)
		total=0
		int3=3
		int5=5
		for index in 0..upperIntLimit-1 do
			if isMultiple(int3,index) || isMultiple(int5,index)
				total += index 
			end
		end	
		printTotal(upperIntLimit,total)	
	end
	def printTotal(upperIntLimit,total)
		puts("The sum of all the natural numbers below #{upperIntLimit} that are multiples of 3 or 5 is: #{total}")
	end	
	
	private #These functions are private to the problem one class.
	def isMultiple(intMultiplier,input)
			if (input % intMultiplier)==0
				#puts(" multiple of #{intMultiplier}: #{input}")
				return true
			else 
				return false
			end		
	end
	
end

problem1=Problem1.new()
problem1.multiplesOf3And5(10)	
problem1.multiplesOf3And5(1000)	
