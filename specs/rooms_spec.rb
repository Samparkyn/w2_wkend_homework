require ('minitest/autorun')
require ('minitest/rg')
require_relative('../rooms')

class TestRoom < MiniTest::Test

  def setup
    
    @room1 = Room.new(room_number: 1, type: "single", price: 60, status:"booked")
    @room2 = Room.new(room_number: 2, type: "single", price: 60, status:"booked")
    @room3 = Room.new(room_number: 3, type: "single", price: 60, status:"booked")
    @room4 = Room.new(room_number: 4, type: "double", price: 100, status: "available")
    @room5 = Room.new(room_number: 5, type: "double", price: 100, status: "available")
    @room6 = Room.new(room_number: 6, type: "double", price: 100, status: "available")

    @rooms = [@room1, @room2, @room3, @room4, @room5, @room6]

  end

  def test_room_number
    assert_equal(1, @room1.room_number)
    assert_equal(6, @room6.room_number)
  end

  def test_room_type
    # assert_equal("double", @room4.room_type)
    assert_equal("single", @room2.type)
  end

  def test_room_price
    assert_equal(100, @room4.price)
    assert_equal(60, @room1.price)
  end

  def test_get_room_number_and_price
    assert_equal([6, 100], @room6.get_room_number_and_price)
  end

  def test_check_room_status
    assert_equal("booked", @room1.status)
    assert_equal("available", @room5.status)
  end

  def test_check_available_rooms
    assert_equal(4, @room4.check_available_rooms)
    assert_equal(false, @room2.check_available_rooms)
  end


end