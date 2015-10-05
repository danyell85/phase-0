#Input: Take in 3 non negative integers(sides)
#Output: True or False
#Steps/Notes:
	# 1. One where all three sides lengths are the same
	# 	1. Check if all ints are > 0 && check if all ints are ==
	# 2. One where two sides lengths are the same and one is different
	# 	(Scalene) a==b || b==c || a==c
	# 3. One where all three sides lengths are different
	# 	return (a*a) + (b*b) == (c**)

#Intial Solution	
# def valid_triangle?(a,b,c)
# 	if a && b && c > 0
# 		if (a+b> c) && (a+c> b) && (b+c>a)
# 			true			
# 		else 
# 			false	
# 		end						
# 	end	
# end

#Refactored Solution
def valid_triangle?(a,b,c)
	return (a+b> c) && (a+c> b) && (b+c>a)
end
