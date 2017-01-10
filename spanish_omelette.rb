def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end


NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]

puts "Let's make that omelette!"

print_divider

puts "You need the following ingredients: "

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "You have all the ingredients needed? (Y/N)"
  answer = gets.chomp.upcase

  if answer == "Y"
    puts "Nice, let's start cooking then!"
    break
  elsif answer == "N"
    puts "Well, go get 'em!"
    print_progress_bar
  else
    puts "Oops, something went wrong. Type \"Y\" or \"N\"."
  end
end
