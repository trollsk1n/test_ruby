# frozen_string_literal: true

# Bird class
class Bird
  attr_accessor :name

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

  def move(destination)
    puts "#{@name} flies to the #{destination}."
  end
end

# Another class for dogs
class Dog
  attr_accessor :name, :age

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is a #{@age} old"
  end
end

# And third class for Cats
class Cat
  attr_accessor :name

  def talk
    puts "#{@name} says Meow!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move('tree')
dog.age = 5
dog.name = 'Bary'
dog.report_age
dog.talk
dog.move(500)
bird.name = 'Chick'
bird.talk
cat.move('house')
