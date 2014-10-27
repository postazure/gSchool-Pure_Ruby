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
