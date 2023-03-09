require_relative 'reverse_polish_calculator'

RSpec.describe ReversePolishCalculator do
  describe 'evaluate string' do
    it 'solves 2 1 + 3 * string' do
      input = '2 1 + 3 *'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(9)
    end

    it 'solves 4 13 5 / + string' do
      input = '4 13 5 / +'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(6)
    end

    it 'solves 10 6 9 3 + -11 * / * 17 + 5 + string' do
      input = '10 6 9 3 + -11 * / * 17 + 5 +'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(22)
    end

    it 'solves 2 5 * 4 + 3 2 * 1 + / string' do
      input = '2 5 * 4 + 3 2 * 1 + /'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(2)
    end

    it 'solves 3 2 * 11 - string' do
      input = '3 2 * 11 -'
      expect(ReversePolishCalculator.evaluate_string(input)).to eq(-5)
    end
  end
end