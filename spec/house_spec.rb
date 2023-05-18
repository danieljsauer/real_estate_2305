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
      expect(house.room_1).to be_a Room 
      expect(house.room_1.category).to eq(:bedroom)
      expect(rooms.count).to eq(1)
    end 
    it "can add multiple rooms" do 
      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')   
      expect(rooms.count).to eq(2)
    end 
  end 



end