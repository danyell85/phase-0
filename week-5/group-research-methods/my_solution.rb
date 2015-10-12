i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.each {|word| answer.push(word) if word.to_s.include? thing_to_find }
  return answer
end

# my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  answer = Array.new
  source.each {|k,v| answer.push(k) if v == thing_to_find}
  return answer
end

def my_array_modification_method!(source, thing_to_modify)
  new_array = []
  source.each { |x| x.is_a?(Integer) ? new_array << x + thing_to_modify : new_array << x }
  source.replace(new_array)
  return source
end


def my_hash_modification_method!(source, thing_to_modify)
  source.each { |k, v| source[k] = v + thing_to_modify }
  return source
end


# Person 3
def my_array_sorting_method(source)
  source.sort_by{|i| i.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by{|key,value|value}
end

# Identify and describe the Ruby method(s) you implemented.
# For the array, I choose to sort_by instead of sort. Sort_by only takes in one parameter.
# For the hash, I used sort_by and it sorted by the value. 
#