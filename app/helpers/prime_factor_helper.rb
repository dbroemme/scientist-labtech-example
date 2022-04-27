module PrimeFactorHelper

  def largest_prime_factor(number)
    LabTech.science "prime-factors" do |experiment|
      experiment.use { find_largest_prime_factor(number) }     # old way
      experiment.try { improved_largest_prime_factor(number) } # new way
    end  # returns the control value
  end

  def is_prime?(n)
    possible_factors = Array (2..Math.sqrt(n).floor)
    possible_factors.each do |x|
      if n % x == 0
        return false
      end
    end
    true
  end

  def find_largest_prime_factor(n)
    puts "Using the old way"
    largest_factor = 1
    (2..n).each do |x|
      if ((n % x == 0) && is_prime?(x))
        largest_factor = x
      end
    end
    largest_factor
  end

  def improved_largest_prime_factor(n)
    puts "Using the new way"
    largest_factor = 1
    x = 2
    while x <= n
      if ((n % x == 0) && is_prime?(x))
        largest_factor = x
        n = n / x
      end
      x = x + 1
    end
    largest_factor
  end

end
