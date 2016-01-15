module Problem3

  def self.prime_factors_of number
    factors = []
    found_all = false
    until found_all
      if number == 1
        found_all = true
      else
        factor = first_non_one_factor_of number
        number /= factor
        factors << factor
      end
    end
    factors.uniq
  end

  def self.first_non_one_factor_of(number)
    (2..number).find { |i| (number % i).zero? }
  end

  def self.largest_prime_factor_of number
    prime_factors_of(number).max
  end
end