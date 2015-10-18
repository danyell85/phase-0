class CreditCard
	def initialize(number)
		@number=number.to_s
		raise ArgumentError.new("Card Must Contain 16") if @number.length != 16
	end		
	def check_card
		number2=@number.split("")
		number2.reverse!.each_with_index do |element,index|     
			if index.odd?
				double = element.to_i * 2
				number2[index]=double.to_s.split("")
			end
	end
		number2.flatten!
		sum = number2.inject{|sum,num| sum.to_i + num.to_i}
		return sum % 10 == 0
	end 
end	