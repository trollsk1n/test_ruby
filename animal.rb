# frozen_string_literal: true

# Animal superclass
class Animal

  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ''

    @name = value
  end

  def age=(value)
    raise "An age of #{value} isn't valid" if value.negative?

    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to #{destination}"
  end

  def report_age
    puts "#{@name} is #{age} years old"
  end

end

# Dog class extends Animal
class Dog < Animal
end

# Cat class extends Animal
class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end
end

# Bird class extends Animal
class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

# Armadillo class extends Animal
class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end
