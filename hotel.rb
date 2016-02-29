class Hotel

  attr_accessor :hotel_name, :rooms, :guests, :till

  def initialize(rooms, guests, till)
    @hotel_name = hotel_name
    @rooms = rooms
    @guests = guests
    @till = []
  end

  def has_guests(guests)
    return @guests.length
  end

  def number_of_rooms(rooms)
    return @rooms.length
  end

  def number_of_rooms_available(rooms)
    available_rooms = @rooms.select {|room| room.status == "available"}.length 
      return available_rooms
    end

  def number_of_rooms_occupied(rooms)
    occupied_rooms = @rooms.select {|room| room.status == "occupied"}.length
    return occupied_rooms
  end

  def guest_has_booking(guest)
    if guest.booking == "booked"
      return true
    else
      return false
    end
  end

  def add_single_room_to_till(room)
    price_single_room = room.price
    if room.type == "single"
    till << price_single_room
    end
  end

  def add_double_room_to_till(room)
    price_double_room = room.price
    if room.type == "double"
      till << price_double_room
    end
  end

  def end_of_day_revenue(rooms)
    till = 0
    @rooms.each {|room| till += room.price if room.status == "occupied"}
    return till
  end
end


