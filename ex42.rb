## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a class of Animel
class Dog < Animal

  def initialize(name)
    ## Dog has-a name of some kind
    @name = name
  end
end

## Cat is-a class of Animal
class Cat < Animal
  def initialize(name)
    ## Cat has-a name of some kind
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name of some kind
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a class of Person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a name of Person
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a class of Fish
class Salmon < Fish
end

## Halibut is-a class of Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet named Satan
mary.pet = satan

## frank has-a salary of 1200000
frank = Employee.new("Frank", 1200000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()
