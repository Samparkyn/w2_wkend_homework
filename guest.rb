class Guest

  attr_accessor :name, :booking

  def initialize(params)
    @name = params[:name]
    @booking = params[:booking]
  end

def has_booking
  reservation = []
  result = @name + " " + @booking
  if @booking == "booked"
  reservation << result
else return "you have no booking"
end
  return result
end

end