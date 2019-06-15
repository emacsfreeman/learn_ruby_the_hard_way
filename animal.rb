class Animal
  WILD = true

  @@counter = 0

  attr_accessor :age 
  
  def initialize(name, sex, age)
    @@counter += 1
    @name, @sex, @age = name, sex, age
  end


  def description
    puts "#{@name} is #{@age} years old."
  end

  def self.instances_count
    puts "We created #{@@counter} animals."
  end

end
