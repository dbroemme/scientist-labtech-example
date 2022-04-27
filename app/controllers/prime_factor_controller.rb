class PrimeFactorController < ApplicationController
  def index
    puts "In prime factor index"
    @prime = PrimeNumberModel.new
  end

  def search
    puts "In search method"
    
    @prime = PrimeNumberModel.new(prime_params)
    @prime.factor = helpers.largest_prime_factor(@prime.number)

    render :template => "prime_factor/index"
  end

  def prime_params
    params.require(:prime_number_model).permit(:number, :factor)
  end
end
