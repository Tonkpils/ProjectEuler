require 'spec_helper'
require 'problem2'

describe Problem2 do

  describe 'fibonnaci' do
    {
        0   => 1,
        1   => 1,
        2   => 2,
        3   => 3,
        4   => 5,
        5   => 8,
        10  => 89
    }.each do |idx, value|
      it "returns #{value} with #{idx}" do
        expect(Problem2.fibonacci_number(idx)).to eq(value)
      end
    end
  end

  describe 'fibonacci_even_sum' do
    it 'returns the sum' do
      Problem2.fibonacci_even_sum
    end
  end
end