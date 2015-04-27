class Delivery
  define_method(:initialize) do |length, width, height, weight|
    @length = length.to_i()
    @width = width.to_i()
    @height = height.to_i()
    @weight = weight.to_i()
  end

  define_method(:volume) do
    @volume = @length * @width * @height
    @volume.to_s()
  end

  define_method(:cost_to_ship) do

    flat_rate = 2.99
    if self.volume.to_i() <= 10
      return flat_rate.to_s()
    else
      final_output = (flat_rate.+(@weight * 2))
      return final_output.to_s()
    end
  end
end
