module Problem1

  # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  #
  # Find the sum of all the multiples of 3 or 5 below 1000.
  def self.sum_up_to(limit)
    (0...limit).inject(0) { |sum, number| number % 3 == 0 || number % 5 == 0 ? sum + number : sum }
  end
end

