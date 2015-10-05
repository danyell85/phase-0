def smallest_integer(array)
	array.sort!{|x,y| x <=> y}
	return array[0]
end
