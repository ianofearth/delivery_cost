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
end
