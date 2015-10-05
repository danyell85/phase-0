# def longest_string(list_of_words)
# 	if list_of_words.length == 0
# 		return nil
# 	end
# 	first_word = list_of_words[0]
# 	list_of_words.each{|word| first_word = word if word.length > first_word.length}
# 	first_word
# end		

def longest_string(list_of_words)
	list_of_words.sort!{|x,y| y.length <=> x.length}
	return list_of_words[0]
  end