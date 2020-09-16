# (3) Write a program that collects 5 keys and 5 values from the user, 
# and stores them in a hash.  Write a function that accepts the hash as 
# optional parameters and prints out an array of keys and an array of values.  
# Call the function within your program so you know it works. 
# (Question: Can you find online information on Ruby hash methods 
#     that will help with this function?)  
#     Call this program hash_to_array.rb.

puts "Let's create the list of travelers for 2021"

def create_list

  list = {}

  print "What is the month the client wants to travel? "
  month = gets.chomp

  print "What is the client name? "
  client = gets.chomp
  
  print "What is the client last name? "
  last_name = gets.chomp

  print "How old the client is? "
  age = gets.chomp

  print "What is the client destination? " 
  destination = gets.chomp

  hash = { "month" => month, "client" => client, "last_name" => last_name, "age" => age, "destination" => destination }
  return hash
end

list = create_list()
puts list.inspect

keys = list.keys
puts "#{keys}"
  
values = list.values
puts "#{values}"
