# Write an Application to calculate additional fees for a rental car 

# If you're under 21 years old, you can't rent a car at all.
# If you're over 21, you can rent with a $20 additional fee per day.
  # AND If you're in NY, you also pay a state flat fee of $25 dollars.
  # AND If you're in MI, you also pay a flat fee of $20.
# If you're over 25, you don't pay any additional fees.
 
# What pieces of data will we need from our user?
  # age, location, rent_time
# What data can we hard-code into our program?
  # Fee per day - 20 dollars
  # which states charge extra fees? - MI, NY

# - Greet the user and explain how the program works
puts "Welcome to the Rental Car Fee Checker! To begin, please enter your age."
# - get the user age 
age = gets.strip.to_i
puts "age is #{age}"
# - if age is less than 21 
minimum_rental_age = 21
if age < 21
  # - tell the user they can't rent 
  puts "Sorry, you are too young to rent a car."
  # - if the age is over 25 
  elsif age >= 25 
  # - tell them they can rent with no fee 
  puts "You can rent without any additional fees"
# - otherwise 
else 
  # - ask their state and how many days they are renting
  puts "How many days will you be renting for?"
  days_renting = gets.strip.to_i
  puts "Please enter your two digit state code"
  state = gets.strip
  # - set fee to be number of days times fee per day 
  fee_per_day = 20
  fee = days_renting * fee_per_day
  
  case state
  # - if they are in michigan 
  when "MI"
    fee += 20 
    # - add 20 to fee 
  # - if they are in NY
    when "NY"
      fee += 25
    end 
    # - add 25 to fee 
# - tell the user their total fee
  puts "You will owe #{fee}"
end 

















# define a car_rent method with three arguments of age, location, and rent_time
  # if age < 21 you can't rent 
  # if age > 21 you can rent with $20 daily fee
  # if age > 21 AND location == NY, pay $25 flat fee 
  # if age > 21 AND location == MI, pay $20 flat fee 
  # if age > 25 you pay no fee 