require ('minitest/autorun')
require ('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new(name: "Josh Parkyn", booking: "booked")
    @guest2 = Guest.new(name: "Robbie Williams", booking: "no booking")
    @guest3 = Guest.new(name: "Stan Wawrinka", booking: "no booking")
    @guest4 = Guest.new(name: "Chris Martin", booking: "no booking")
    @guest5 = Guest.new(name: "Ricardo Monteiro", booking: "booked")
    @guest6 = Guest.new(name: "Sam Parkyn", booking: "booked")

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

  end

  def test_guest_name
      assert_equal("Robbie Williams", @guest2.name)
  end

  def test_has_booking
      assert_equal("no booking", @guest2.booking)
      assert_equal("booked", @guest1.booking)
      assert_equal("Josh Parkyn " "booked", @guest1.has_booking)
  end
end