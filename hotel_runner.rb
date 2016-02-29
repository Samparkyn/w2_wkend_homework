require_relative('rooms')
require_relative('hotel')
require_relative('guest')

@room1 = Room.new(room_number: 1, type: "single", price: 60, status:"occupied")
@room2 = Room.new(room_number: 2, type: "single", price: 60, status:"occupied")
@room3 = Room.new(room_number: 3, type: "single", price: 60, status:"occupied")
@room4 = Room.new(room_number: 4, type: "double", price: 100, status: "available")
@room5 = Room.new(room_number: 5, type: "double", price: 100, status: "available")
@room6 = Room.new(room_number: 6, type: "single", price: 60, status: "occupied")
@room7 = Room.new(room_number: 7, type: "double", price: 100, status: "available")
@room8 = Room.new(room_number: 8, type: "double", price: 100, status: "occupied")
@room9 = Room.new(room_number: 9, type: "single", price: 60, status: "available")
@room10 = Room.new(room_number: 10, type: "double", price: 100, status: "occupied")

 @rooms = [@room1, @room2, @room3, @room4, @room5, @room6, @room7, @room8, @room9, @room10]

 @guest1 = Guest.new(name: "Josh Parkyn", booking: "booked")
 @guest2 = Guest.new(name: "Robbie Williams", booking: "no booking")
 @guest3 = Guest.new(name: "Stan Wawrinka", booking: "no booking")
 @guest4 = Guest.new(name: "Chris Martin", booking: "no booking")
 @guest5 = Guest.new(name: "Ricardo Monteiro", booking: "booked")
 @guest6 = Guest.new(name: "Sam Parkyn", booking: "booked")

 @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

 @hotel = Hotel.new(@rooms, @guests, :till)


puts "Hey there, Welcome to Sam's Hotel."
puts "Please enter your name, so we can check your booking"
response_name = gets.chomp
puts "Welcome #{response_name}" 

new_guest = @guests.select {|guest| guest.name == response_name}
if new_guest != nil
  puts "You have a booking"
  else
    puts "Sorry, we don't appear to have your name in our system. Would you like to make a new booking?"
end
#I have a problem here, as it will say you have a booking whatever your name is, even if you input a number... but I can't seem to get the logic right for accessing the array of guests... 

puts "We'll get you checked in now. We hope you enjoy your stay."
puts "Our hotels revenue today is #{end_of_day_revenue}"
#not sure how to call the revenue method :( 
