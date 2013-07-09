require 'spec_helper'
require 'problem1'

describe Problem1 do

  describe "sum of multiples of 3 or 5 up to a limit" do
    it 'results to 23 with a limit of 10' do
      expect(Problem1.sum_up_to(10)).to eq(23)
    end
    it 'results to 0 with a limit of 3' do
      expect(Problem1.sum_up_to(3)).to eq(0)
    end
    it 'results to 3 with a limit of 4' do
      expect(Problem1.sum_up_to(4)).to eq(3)
    end
    it 'results to 8 with a limit of 6' do
      expect(Problem1.sum_up_to(6)).to eq(8)
    end
    it 'gives me the result for the question' do
      Problem1.sum_up_to(1000)
    end
  end
end

