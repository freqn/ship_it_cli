class Parcel

  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
   @volume =  @length * @width * @height
  end

  def cost_to_ship
    volume
    total = @volume / 10 + @weight / 0.90
    total.round(2)
  end
end

