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

    final_output = 2.99
    if @volume.to_i() <= 10
      return final_output.to_s()
    else
      final_output = final_output + @weight * 2
      return final_output.to_s()
    end
  end
end
