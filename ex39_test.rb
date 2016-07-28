require './dict.rb'

# Creates a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# Creates a basic set of states an d some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')


# puts out some cities
puts '-' * 10
puts "NY state has: #{Dict.get(cities, 'NY')}"
puts "OR state has: #{Dict.get(cities, 'OR')}"

#puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

# puts state by using state then cities dic
puts '-' * 10
puts "Michigan has: #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"

# puts every state abbreviation
puts '-' * 10
puts Dict.list(states)

# puts every city in state
puts '-' * 10
Dist.list(cities)

puts '-' * 10
state = Dict.get(states, 'Texas')

if !state # by default Ruby puts nil if something not there
    puts "Sorry, no Texas."
end

city = Dist.get(cities, 'TX', 'Does not exist.') # default values using ||= with the nil result
puts "The city for the state 'TX' is #{city}"


