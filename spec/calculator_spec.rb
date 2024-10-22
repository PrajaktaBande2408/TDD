require './calculator'

RSpec.describe Calculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end

    it 'returns the sum of two numbers' do
      expect(Calculator.add("1,2")).to eq(3)
    end
  end
end