class Hotel

  attr_accessor :hotel_name, :rooms, :guests

  def initialize(rooms, guests)
    @hotel_name = hotel_name
    @rooms = rooms
    @guests = guests
  end

  def has_guests(guests)
    return @guests.length
  end

  def number_of_rooms(rooms)
    return @rooms.length
  end

end