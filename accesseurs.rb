class Animal
  WILD = true

  @@counter = 0

  def initialize(name, sex, age)
    @@counter += 1
    @name, @sex, @age = name, sex, age
  end

  # getter 
  def age
    @age # a pour but de permettre de renvoyer la valeur de la var
  end

  # setter
  def age=(age)
    @age = age # a pour but de permettre de modifier la valeur de la var
  end

  def description
    puts "#{@name} is #{@age} years old."
  end

  def self.instances_count
    puts "We created #{@@counter} animals."
  end

end
