require ('minitest/autorun')
require ('minitest/rg')
require_relative('../rooms')

class TestRoom < MiniTest::Test

  def setup
    
    @room1 = Room.new(1, "single", 60, "booked")
    @room2 = Room.new(2, "single", 60, "booked")
    @room3 = Room.new(3, "single", 60, "booked")
    @room4 = Room.new(4, "double", 100, "available")
    @room5 = Room.new(5, "double", 100, "available")
    @room6 = Room.new(6, "double", 100, "available")

    @rooms = [@room1, @room2, @room3, @room4, @room5, @room6]

  end

  # def test_number_of_rooms
  #   assert_equal(6, @rooms.number_of_rooms)
  # end

  def test_room_number
    assert_equal(1, @room1.room_number)
    assert_equal(6, @room6.room_number)
  end

  def test_room_type
    assert_equal("double", @room4.room_type)
    assert_equal("single", @room2.room_type)
  end

  def test_room_price
    assert_equal(100, @room4.room_price)
    assert_equal(60, @room1.room_price)
  end

  def test_get_room_number_and_price
    assert_equal([6, 100], @room6.get_room_number_and_price)
  end

  def test_check_room_status
    assert_equal("booked", @room1.check_room_status)
    assert_equal("available", @room5.check_room_status)
  end

end