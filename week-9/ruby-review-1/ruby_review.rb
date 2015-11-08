# Introduction to Inheritance

# I worked on this challenge [with: Nicole Yee].


# Pseudocode
#Our pseucode isnt ideal. We added the methods and attributes to the classes from the assignment
# then built each method on a a time and made notes.
# there was a lot to do and without knowing placement it was hard.
#add student to array
#remove student from array
#currently in phase - compare dates - if statement
#graduated? - compare dates - if statement


# Initial Solution
=begin
$email_list = []
$students = [] #array of all students names
class GlobalCohort
  #your code here
  require 'date'
  #Date.today.httpdate
  def initialize
    @name = 'Copperheads'    
    @p0_start_date = Date.parse("2015/9/7")
    @immersive_start_date = @p0_start_date + 63
    @graduation_date = @p0_start_date + 126
    
    #@num_of_students = students.length
  end
  
  def add_student(student)
    $students << student
  end
  
  def remove_student(student)
    $students.delete(student)
  end
  
  def printz(array)
    puts array
  end
  
  def currently_in_phase
    if Date.today < (@p0_start_date + 63)
      puts 'Phase0'
    elsif Date.today < (@p0_start_date + 84)
      puts 'Phase1'
    elsif Date.today < (@p0_start_date + 105)
      puts 'Phase2'
    elsif Date.today < (@p0_start_date + 126)
      puts 'Phase3'
    else
      puts 'Graduated'
    end
  end
  
  def graduated?
    if Date.today > @p0_start_date
      true
    else
      false
    end
  end
  
end
class LocalCohort < GlobalCohort
  #your code here
  def initialize(location)    
    #super(@students)
    @location = location
    @students_local = [] #[array of local students]
    #@email_list_local = #just local email addresses
  end
  
  def locals
    for i in 0...$students.length
      if $students[i].city == @location
        #p $students[i].city
        @students_local << $students[i]
      end
      p @students_local
    end
    #@students_local << $students.select { |i| $students[i].city == (@location) }
  end
  
end
class Student
  attr_accessor :first
  attr_accessor :last
  attr_accessor :email
  attr_accessor :city
  def initialize(first, last, email, city)
    @first = first
    @last = last
    $email_list << email
    @city = city
  end  
end
=end


# Refactored Solution

$email_list = []
#$students = [] #array of all students names
class GlobalCohort
  require 'date'
  def initialize(students, name)
    @students = students
    @name = name  
    @p0_start_date = Date.parse("2015/9/7")
    @immersive_start_date = @p0_start_date + 63
    @graduation_date = @p0_start_date + 126
    @num_of_students = 0
  end
  
  def add_student(student)
    @students << student
    @num_of_students = @students.length
  end
  
  def remove_student(student)
    @students.delete(student)
    @num_of_students = @students.length
  end
  
  def currently_in_phase
    if Date.today < (@p0_start_date + 63)
      puts 'Phase0'
    elsif Date.today < (@p0_start_date + 84)
      puts 'Phase1'
    elsif Date.today < (@p0_start_date + 105)
      puts 'Phase2'
    elsif Date.today < (@p0_start_date + 126)
      puts 'Phase3'
    else
      puts 'Graduated'
    end
  end
  
  def graduated?
    if Date.today > @p0_start_date
      true
    else
      false
    end
  end
  
end

class LocalCohort < GlobalCohort
  #your code here
  def initialize(location, students, name)    
    super(students, name)
    @location = location
    @students_local = [] #[array of local students]
    #@email_list_local = #just local email addresses
  end
  
  def locals
    for i in 0...@students.length
      if @students[i].city == @location
        @students_local << @students[i]
      end
      p @students_local
    end
    #@students_local << @students.select { |i| @students[i].city == (@location) }
  end
  
end

class Student
  attr_accessor :first, :last, :email, :city
  def initialize(first, last, email, city)
    @first = first
    @last = last
    $email_list << email
    @city = city
  end  
end


# Driver Code

one = Student.new('1', '1', 'email1', 'sf')
two = Student.new('2','2', 'email2', 'chi')
three = Student.new('3','3','email3', 'sf')

a = [one, two, three]
b = [1,2]
#c = GlobalCohort.new(a)

sf = LocalCohort.new('sf',a, 'c')
#d = sf.locals
sf.locals

# Reflection:
# What concepts did you review in this challenge?
# A whole bunch, Inheritance which was new. The general idea behind it is easy. In ruby youcan only inherit from on other class so you need to make sure it has everything you need.
# What is still confusing to you about Ruby?
# Also getting the date to be in our timezone we left it at its default
# Had some issues with using super and getting our email to work instead of using a global variable. 
# What are you going to study to get more prepared for Phase 1?
# Driver code. I am awful creating it and need more practice. 
