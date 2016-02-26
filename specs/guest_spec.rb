require ('minitest/autorun')
require ('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Josh")
    @guest2 = Guest.new("Robbie Williams")
    @guest3 = Guest.new("Stan")

    @guests = [@guest1, @guest2, @guest3]

  end

  def test_guest_name
      assert_equal("Robbie Williams", @guest2.guest_name)
  end
end