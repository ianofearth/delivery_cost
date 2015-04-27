require('rspec')
require('delivery')
require('pry')

describe(:Delivery) do
  describe("#volume") do
    it("calculates the volume of a container of given dimensions") do
      test_package = Delivery.new("2","2","2","2")
      expect(test_package.volume()).to(eq("8"))
    end
  end
end
