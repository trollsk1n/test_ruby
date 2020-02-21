# frozen_string_literal: true

def accelerate
  puts 'Stepping on the gas'
  puts 'Speeding up'
end

def sound_horn
  puts 'Pressing the horn button'
  puts 'Beep beep!'
end

def use_headlights(brightness = 'low brightness')
  puts "Turning on #{brightness} headlights"
  puts 'Watch out for deer!'
end

def mileage(miles_driven, gas_used)
  return 0.0 if gas_used.zero?

  miles_driven / gas_used
end
