class Room

  attr_accessor :room_number, :type, :price, :status

  def initialize( params)
    @room_number = params[:room_number]
    @type = params[:type]
    @price = params[:price]
    @status = params[:status]
  end

  def get_room_number_and_price
    room_number_result = []
    price_result = []
    room_number_result << @room_number 
    price_result << @price
    return room_number_result + price_result
  end

  def check_available_rooms()
   if @status == "available"
    return @room_number
  else false #for the moment i've got it returning false if the room is booked, for testings sake.. but in the running version of the program I will have it saying "room not available" or "already booked"
  end
  end

end