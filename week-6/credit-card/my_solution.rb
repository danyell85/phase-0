  # Psuedocode:
# Input: Credit card number
# Output: Boolean if card is valid or not
# Steps:
# 1. Create a class called CreditCard
# 2. Method for initialize of the creditcard number
# 3. Check to see if the creditcard number has 16 digits if not raise ArgumentErrors    
# 4. Either iterate through array with either -2 or reverse! to start at the second to last digit
# 5. Double every other number with possible each_with_index. or maybe parition. 
# 6. Breakdown double digits into single elements
# 6b. Flatten the array to be abel to easily total it
# 7. convert to int and iterate though to add all digits
# 8. Conditional state that returns Module 10 of the sum 


# class CreditCard
#   def initialize(number)
#     @number = number.to_s
#     raise ArgumentError.new("Number needs to be 16 digits!") if @number.length != 16
#   end  
    
#   def times_2
#     cc_number = @number.split("") 
#        cc_number.reverse!.each_with_index do |element,index|
#          if index.odd?
#            double = element.to_i * 2
#            cc_number[index] = double.to_s.split("")
#          end 
#         end 
#         cc_number.flatten! 
#         @sum_of_cc = 0 
#         cc_number.each do |element|
#           @sum_of_cc = element.to_i + @sum_of_cc.to_i    
#        end 
#     end
#     def check_card
#        times_2
#        return @sum_of_cc % 10 == 0
#     end     
#  end  
# refactored:
 class CreditCard
     def initialize(number)
       @number = number.to_s
       @sum_of_cc = 0 
       raise ArgumentError.new("Number needs to be 16 digits!") if @number.length != 16
     end  
    
    def times_2
       cc_number = @number.split("") 
       cc_number.reverse!.each_with_index do |element,index|
         if index.odd?
           double = element.to_i * 2
           cc_number[index] = double.to_s.split("")
         end 
        end 
        cc_number.flatten! 
        cc_number.each{|element| @sum_of_cc  += element.to_i} # this was the only thing we refactored and was still able to get the code to run.
    end
    
    def check_card
       times_2
       return @sum_of_cc % 10 == 0
    end     
 end 
# try1 = CreditCard.new(4408041234567901)
# p try1.check_card

#   class CreditCard
#     def initialize(number)
#       @number = number.to_s
#       raise ArgumentError.new("Number needs to be 16 digits!") if @number.length != 16
#     end  
#     def check_card
#       cc_number = @number.split("")
#       cc_number.reverse!.partition{|element| ? }
#       cc_number[0].each{|element| element * 2}
#       cc_number[0].to_s.split("")
#       cc_number.flatten!
#       sum_of_cc = cc_number.reduce(:+)
#       return sum_of_cc % 10 == 0
#     end  
# end 

# Reflection:
# What was the most difficult part of this challenge for you and your pair?
# The most difficult was realizing I needed to flatten the cc_number array. Until I started printing it out using driver code instead of the rspec file I wasnt understandint why it wasnt working properly.
# What new methods did you find to help you when you refactored?
# I started my refactoring but ran out of time. It was bascially tossing ideas out there. There isnt proper syntax or even code. It was a brain storming notes. 
# What concepts or learnings were you able to solidify in this challenge?
# This challenge was a lot of fun. It didnt take too long to figure out and things I used to have to look up came to me naturally. I was able to use each_with_index without havign to look it up. 
# # try1 = CreditCard.new(4408041234567901)
# p try1.check_card
