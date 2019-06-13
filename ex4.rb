cars = 100 # variable asignment
space_in_a_car = 4.0 # variable asignment
drivers = 30 # variable asignment
passengers = 90 # variable asignment
cars_not_driven = cars - drivers # variable asignment
cars_driven = drivers # variable asignment
carpool_capacity = cars_driven * space_in_a_car # variable asignment
average_passengers_per_car = passengers / cars_driven # variable asignment


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

# Study Drill
# ex4.rb:14: undefined local variable or method `carpool_capacity' for
#    main:Object (NameError)
# This error means that carpool_capacity hasn't been defined in the
# declaration part
# 1) 4.0 is not necessary because the space_in_a_car variable stands for
# the number of spots available in the car so we can put 4 instead
# 2)
