require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |v|
   puts "#{v[:name]} (#{v[:cuisine]}) | Heat level: 🌶🌶🌶 \n"
  end
 end
print_spicy_foods(spicy_foods)

def get_names(spicy_foods)
 new_array = []
spicy_foods.each do |names|
# puts names.values[0]
new_array << [names[:name]]
#binding.pry
return new_array
end
end
get_names(spicy_foods)

def spiciest_foods(spicy_foods)
new_array = []
spicy_foods.select do |n|
  if n[:heat_level] > 5
    new_array << ["#{n[:name]} Heat Level: #{n[:heat_level]}"]
    #binding.pry
    return new_array

  end
end
end
spiciest_foods(spicy_foods)

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.select do |n|
     if cuisine == n[:cuisine]
     puts n[:name]
     end
  end
end
#get_spicy_food_by_cuisine(spicy_foods, "Sichuan")

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  new_array = []
  spicy_foods.select do |n|
    if n[:heat_level] > 5
      new_array << ["#{n[:name]} Heat Level: #{n[:heat_level]}"]
      #binding.pry
      return new_array
  
    end
  end
end
#print_spiciest_foods(spicy_foods)

def average_heat_level(spicy_foods)
heat = 0
spicy_foods.each do |h|
  heat += h[:heat_level]
end
return heat/3
end
average_heat_level(spicy_foods)
# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
