module Problem2

  def self.fibonacci_number(index)
    return 1 if index < 2
    fibonacci_number(index - 1) + fibonacci_number(index - 2)
  end

  def self.fibonacci_even_sum
    i, sum = 0, 0
    while (number = fibonacci_number(i)) <= 4_000_000
      sum += number if number % 2 == 0
      i += 1
    end
    sum
  end
end