require './lib/room'
require './lib/house'

RSpec.describe House do
  describe "iteration 2" do 
    it "exists" do  
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_a House
    end 

    it "has a price" do 
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq(400000)
    end 

    it "had an address" do 
      house = House.new("$400000", "123 sugar lane")
      expect(house.address).to eq("123 sugar lane")
    end

    it "rooms default value is an empty array" do 
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end 

    it "can add rooms into the house" do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      house.add_room(room_1)
      expect(house.rooms[0]).to be_a Room 
      expect(house.rooms.count).to eq(1)
    end 

    it "can add multiple rooms" do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')   
      house.add_room(room_1)
      house.add_room(room_2)
      expect(house.rooms.count).to eq(2)
    end 
  end 

  describe "iteration 3" do
    it "can check value against market average"  end 
      house = House.new("$400000", "123 sugar lane")
      expect (house.above_merket_average?).to be false 
    end
    
    it "can search number of rooms by category" do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')    
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)
      expect(house.rooms_from_category(:bedroom)).to eq(2)
    end 

    it "can list details as a hash" do 
      house = House.new("$400000", "123 sugar lane")
      expect(house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end 


  end 

end