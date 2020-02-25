# frozen_string_literal: true

# Vehicle class
class Vehicle

  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts 'Floor it!'
  end

  def sound_horn
    puts 'Beep! Beep!'
  end

  def steer
    puts 'Turn front 2 wheels.'
  end

  def mileage
    @odometer / @gas_used
  end
end

# Car class extends Vehicle
class Car < Vehicle

end

# Truck class extends Vehicle
class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."

    @cargo = contents
  end

end

# Motorcycle class extends Vehicle
class Motorcycle < Vehicle

  def steer
    puts 'Turn front wheel.'
  end

end
