# frozen_string_literal: true

# Dog class
class Dog

  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ''

    @name = value
  end

  def age=(value)
    raise "An age of #{value} isn't valid" if value.negative?

    @age = value
  end

  def report_age
    puts "#{@name} is #{age} years old"
  end

end
