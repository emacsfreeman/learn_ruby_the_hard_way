class Dog < Animal
  WILD = false

  def cry
    puts "Woof!"
  end

  def description
    super
    puts "He's a dog."
  end 
end
