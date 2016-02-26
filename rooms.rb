class Room

  attr_accessor :room_number, :room_type, :price, :status

  def initialize(room_number, room_type, price, status)
    @room_number = room_number
    @room_type = room_type
    @price = price
    @status = status
  end

  # def number_of_rooms()
  #   return rooms.length
  # end

  def room_number
    return @room_number
  end

  def room_type
    return @room_type
  end

  def room_price
    return @price
  end

  def get_room_number_and_price
    room_number_result = []
    price_result = []
    room_number_result << @room_number 
    price_result << @price
    return room_number_result + price_result
  end

  def check_room_status
    return @status
  end

end