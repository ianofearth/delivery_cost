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

  describe('#cost_to_ship') do
    it('calculates the cost of shipment based on weight and volume') do
      test_package = Delivery.new("2", "2", "2", "2")
      expect(test_package.cost_to_ship()).to(eq("2.99"))
    end
  end
end
