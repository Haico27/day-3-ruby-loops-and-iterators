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

  steps = [
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]

print_divider

puts "Lets see how we can make this Spanish omelette. Follow these steps: "

steps.each_with_index do |step, index|
  puts (index + 1).to_s + ") " + step[:description]
end

def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def scrape_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Scrape potato #{counter}"
    print_progress_bar
  end
end

def cut_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Cut potato #{counter}"
    print_progress_bar
end

def add_potatoes_to_pan
  for counter in  1..NUM_POTATOES
    print "Add potato #{counter} to pan"
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
  counter += 1
  print "Break egg #{counter}"
  print_progress_bar
end
