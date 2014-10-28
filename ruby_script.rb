#--------- 10/27/14 Class notes------------------------------
puts "I'm a ruby script."

#---------Everything in Ruby is an object--------------------
puts 4.even? # this is an object so i can call a method on it
puts 3.2.round # same here
puts 4.class
puts 4.between?(3, 80)

# syntax: thing.method


# Note: '3.send :class' and '3.class' work the same, but don't
# use it this way. It would be dumb.

# If you do 3.methods it will show ALL the methods that can be
# called on it. ('<object>.methods - Object.new.methods' will
# show you everything specific to that object).

# Other langs have Primitives, they can not have methods
# called on them. In Java, 4 is just a 4 (int)

#-------- Variables -----------------------------------------
people_currently_in_class = 27 # Local variable
@people_currently_in_class = 27 # Instance variable
$people_currently_in_class = 27 # Global variable

#--------- String -------------------------------------------
"monkey" == 'monkey'
"monkey" === 'monkey'

"I said, \"Hello\"!" # \ <- escape character (Tells ruby to
# ignore next character)
'I said, "Hello"!' == "I said, \"Hello\"!"

"Hello"[0]      # => 'H'
"Hello"[-1]     # => 'o' back around to the end.
"Hello"[0..2]   # => 'HEL'
"Hello"[-5..-1] # => 'Hello'

long_string = "I don't know. I just don't understand. I don't get it"
long_string.gsub("don't", "do") #find and replace all.

other_string = "I didn't believe. I didn't understand."
other_string.sub("didn't", "did") #find and replace first.

buffoonery = "bluster and blow"
buffoonery.upcase

# Note: some_strign.upcase is not actually changing 'buffoonery', it copies
# it and then makes it avaible in that instance. Then forgets it.

# So, you need to: some_string = some_string.upcase or, some_string.upcase!
# a method with the '!' WILL change the original!!!!!!
# This is called 'Mutation' because it mutates the string permanently.

#--- String Concatenate
full_name = "John" + " " + "Doe"

# or,
first_name = "John"
last_name = "Doe"

full_name = first_name + " " + last_name

# or,
full_name = "#{first_name} #{last_name}" # this requires double-quotes ""
# Note: in the #{} you're just running ruby code.

"2+2 = something"     # =>  2+2 = something
"#{2+2} = something"  # =>    4 = something

#-------------- Arrays ---------------------------------------

# Arrays are ordered
some_array = []     # New Array
some_array.empty?   # => True

some_array[0] = 'foo'
some_array[1] = 'bar'
some_array.empty?   # => False


student_names = ["Jane", "Jeff", "Jan"]
student_names[0]    # => 'Jane'
student_names.at(0) # => 'Jane'
student_names.count  #or .length, or .size


student_names.push("Jimmy")
# adds 'Jimmy' to end of array
# student_names = ["Jane", "Jeff", "Jan", "Jimmy"]

student_name.pop
# Takes the last item off
# Will accept an int, and will pop that many off
# student_names = ["Adam", "Jane", "Jeff", "Jan"]

student_names.unshift("Adam")
# adds "Adam" to the beginning of array
# student_names = ["Adam", "Jane", "Jeff", "Jan"]

student_names.shift
# Takes the first item off
# Will accept an int, and will shift that many off
# student_names = ["Jane", "Jeff", "Jan"]


student_names.insert(2, "Kyle")
# Places at an (INDEX, <something>) and moves everything else over
# student_names = ["Jane", "Jeff", "Kyle", "Jan"]

student_names.delete("Kyle") # or, .delete_at(INDEX)
# Will accept an int, and will shift that many off
# student_names = ["Jane", "Jeff", "Jan"]
# Note: This returns Kyle

student_names.delete_if {|name| name.start_with?("J") }
# Deletes students that start with a "J"
# student_names = []

#--- Multi-dimentional array

ary = [[1,2], [3,4]]

ary[1][0] # => '3'
#ary    [1]               [0]
#array  First Ary Index   Inner Ary Index

#--- Ranges

(1..5).to_a   # => [1,2,3,4,5]
(1...5).to_a  # => [1,2,3,4]      (#...#) range is exclusive

(-5..-1).to_a # => [-5,-4,-3,-2,-1]

#------------------------- Hashes

this_hash = {
  first_name: 'John',
  last_name: 'Doe',
  email: 'john@doe.com'
}

# this_hash = {:first_name=>"John", :last_name=>"Doe", :email=>"john@doe.com"}
# Note: this convers 'email:' to a symbol ':email'.
# SO, this_hash[:email] => 'john@doe.com'

# This is the new way, the old way is a hash rocket '=>'
