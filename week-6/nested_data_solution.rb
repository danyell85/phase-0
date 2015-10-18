# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}


# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |element|
  if element.kind_of?(Array)
    element.each{|inside| p inside + 5}
  else
    p element + 5
  end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each do |element|
  if element.kind_of?(Array)
    element.each do |inner|
      if inner.kind_of?(Array)
        inner.each{|innerinner| innerinner << "ly"}
      else 
        inner << "ly"
      end
    end
  else element << "ly"
  end
end
p startup_names

Reflection
What are some general rules you can apply to nested arrays?
Paying attention to what the elements are. It is really easy to think an array is standing alone but it is the element of another array. Starting at the back of them and going through the brackets is what helped me understand how the nesting was working.
What are some ways you can iterate over nested arrays?
You can iterate through nested arrays the same what as non nested arrays with .each. You just have to add an additional layer to dig into the nested parts of the array.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I hadnt used .kind_of? before this challenge. It is the same as is_a? I used kind_of because if was in the module information for this challenge. 