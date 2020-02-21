# frozen_string_literal: true

# Get My Number Game
# Written by: you!
puts "Welcome to 'Get My Number!'"

# Get gambler name
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Save random number
puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(101)

# Guess count
num_guesses = 0

# Check game is stop or no
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i
  num_guesses += 1

  # Check number is equal with random
  # And show answer
  if guess < target
    puts 'Oops. Your guess was LOW.'
  elsif guess > target
    puts 'Oops. Your guess was HIGH.'
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

# End if guess is equal count 10
puts "Sorry. You didn't get my number. (It was #{target}.)" unless guessed_it
