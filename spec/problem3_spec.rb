require 'spec_helper'
require 'problem3'

describe Problem3 do

  describe 'prime_factors_of' do
    {
        1     => [],
        2     => [2],
        3     => [3],
        4     => [2],
        9     => [3],
        10    => [2, 5],
        11    => [11],
        20    => [2, 5],
        13195 => [5, 7, 13, 29]
    }.each do |num, factors|
      it "#{num} returns #{factors}" do
        expect(Problem3.prime_factors_of(num)).to eq(factors)
      end
    end
  end

  describe 'largest_prime_factor_of' do
    {
        1     => nil,
        2     => 2,
        4     => 2,
        9     => 3,
        10    => 5,
        13195 => 29,
        600851475143 => 6857
    }.each do |num, factors|
      it "returns #{factors} for #{num}" do
        expect(Problem3.largest_prime_factor_of(num)).to eq(factors)
      end
    end
  end
end