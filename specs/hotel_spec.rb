require ('minitest/autorun')
require ('minitest/rg')
require_relative('../rooms')
require_relative('../hotel')
require_relative('../guest')

class TestHotel < MiniTest::Test

  def setup
    
    @room1 = Room.new(1, "single", 60)
    @room2 = Room.new(2, "single", 60)
    @room3 = Room.new(3, "single", 60)
    @room4 = Room.new(4, "double", 100)
    @room5 = Room.new(5, "double", 100)
    @room6 = Room.new(6, "double", 100)

    @rooms = [@room1, @room2, @room3, @room4, @room5, @room6]

    @guest1 = Guest.new("Josh")
    @guest2 = Guest.new("Robbie Williams")
    @guest3 = Guest.new("Stan")


    @guests = [@guest1, @guest2, @guest3]

    @hotel = Hotel.new(@rooms, @guests)

  end

  def test_has_guests
    assert_equal(3, @hotel.has_guests(@guests))
  end

  def test_number_of_rooms
    assert_equal(6, @hotel.number_of_rooms(@rooms))
  end
end