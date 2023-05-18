class Room

  attr_reader :category, :length, :width, :painted 

  def initialize(category, length, width)
    @category = category.to_sym
    @length = length
    @width = width 
    @painted = false 
  end

  def area
    width_int = width.to_i
    area = length * width_int  
    area 
  end 

  def is_painted?
    @painted
  end 

  def paint 
    @painted = true 
  end 

end
