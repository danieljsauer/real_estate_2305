class House
  
  attr_reader :price, :address
  attr_accessor :rooms 

  def initialize(price, address)
    @price = price.delete("$").to_i 
    @address = address 
    @rooms = [] 
  end
  
  def add_room(room)
    rooms << room 
  end 

  def above_market_average?
    if price > 500000
      return true
    else
      return false 
    end 
  end 

  def rooms_from_category(category)
    rooms_category = []
    rooms.each do |room|
      if room.category == category
        rooms_category << room
      end
    end 
    return rooms_category
  end 

  def area 
    house_area = 0 
    rooms.each do |room|
      house_area = house_area + room.area
    end 
    house_area 
  end 

  def details 
    details = {"price" => @price, "address" => @address}
  end 

end 