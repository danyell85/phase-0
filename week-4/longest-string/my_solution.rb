def longest_string(list_of_words)
	list_of_words.sort!{|x,y| y.length <=> x.length}
	return list_of_words[0]
  end