# (1) Write a method that returns in an array all the numbers 
# between 1 and 100 that are divisible by 2 or 3 or 5. 
# Then call the method in your program and print out what it returns.  
# Call the program divisible.rb.

puts "How many numbers between 1 and 100 are divisible by 2 or 3 or 5?"

def divisible(start_number, end_number)
    (start_number..end_number).select { |num|
      num % 2 == 0 || num % 3 == 0 || num % 5 == 0 }
end 

  print "Please type number 1 to start "
   start_number = gets.chomp
   start_number = start_number.to_i
 
  print "Please type number 100 "   
   end_number = gets.chomp
   end_number = end_number.to_i
    
   p divisible(start_number, end_number)

   