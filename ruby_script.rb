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
people_currently_in_class = 27 # this is a local variable
