require 'reverse_polish_calculator'
require 'RSpec'

RSpec.describe ReversePolishCalculator do
  describe 'evaluate string' do
    it 'solves 2 1 + 3 * string' do
      input = '2 1 + 3 *'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(9)
    end

    xit 'solves 4 13 5 / + string' do
      input = '4 13 5 / +'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(6)
    end

    xit 'solves 10 6 9 3 + -11 * / * 17 + 5 + string' do
      input = '10 6 9 3 + -11 * / * 17 + 5 +'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(22)
    end
  end
end