require 'pry'
require 'babbler'

puts 'YAY Friday!'

def keep_coding
  puts 'Pop question: Are you going to keep coding over the weekend? (yes / no)'
  input = gets.strip.downcase

  if input == 'yes'
    puts 'Good answer!'
  else
  	# binding.pry
    # puts 'You serious, bro? Do you even code?'
    puts Babbler.babble
    keep_coding
  end
end

# binding.pry
keep_coding
