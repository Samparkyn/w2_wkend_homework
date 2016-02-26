class Guest

  attr_accessor :guest_name, :reservation

  def initialize(guest_name)
    @guest_name = guest_name
    @reservation = []
  end

  def guest_name
    return @guest_name
  end

end