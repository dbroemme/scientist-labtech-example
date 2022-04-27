require 'scientist'
require 'scientist/experiment'
require 'pp'

module PrimeFactorHelper

  def largest_prime_factor(number)
    LabTech.science "prime-factors" do |experiment|
      experiment.use { brute_force(number) }           # old way
      experiment.try { improved_prime_factor(number) } # new way
    end  # returns the control value
  end

  def is_prime?(n)     
    tests = Array (2..Math.sqrt(n).floor) 
    tests = tests.select { |x| n % x == 0} 
    return true if tests.empty?
    false 
  end

  def brute_force(n)
    puts "Using the old way"
    test = 3
    out = 0
    while test <= n
      if ((n % test == 0) && is_prime?(test)) 
        out = test
      end
      test+=1
    end
    out
  end

  def improved_prime_factor(n)
    puts "Using the new way"
    test = 3
    out = 0
    while test <= n
      if ((n % test == 0) && is_prime?(test)) 
        out = test
        n = n/test
      end
      test+=1
    end
    out
  end

end
