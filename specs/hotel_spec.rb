require ('minitest/autorun')
require ('minitest/rg')
require_relative('../rooms')
require_relative('../hotel')
require_relative('../guest')

class TestHotel < MiniTest::Test

  def setup
    
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

  end

  def test_has_guests
    assert_equal(6, @hotel.has_guests(@guests))
  end

  def test_number_of_rooms
    assert_equal(10, @hotel.number_of_rooms(@rooms))
  end

  def test_number_of_rooms_available
    assert_equal(4, @hotel.number_of_rooms_available(@rooms))
  end

  def test_number_of_rooms_occupied
    assert_equal(6, @hotel.number_of_rooms_occupied(@rooms))
  end

  def test_guest_has_booking
    assert_equal(true, @hotel.guest_has_booking(@guest6))
  end

  def test_add_single_room_to_till
    assert_equal([60], @hotel.add_single_room_to_till(@room2))
  end

  def test_add_double_room_to_till
    assert_equal([100], @hotel.add_double_room_to_till(@room7))
  end

  def test_end_of_day_revenue
    assert_equal(440, @hotel.end_of_day_revenue(@rooms))
  end
end