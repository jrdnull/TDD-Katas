require 'rspec'
require_relative 'prime_factors'

describe PrimeFactors do
  it 'should return an empty array for 1' do
    PrimeFactors.generate(1).should == []
  end

  it 'should return array of factors' do
    PrimeFactors.generate(2).should == [2]
    PrimeFactors.generate(3).should == [3]
    PrimeFactors.generate(4).should == [2, 2]
    PrimeFactors.generate(6).should == [2, 3]
    PrimeFactors.generate(8).should == [2, 2, 2]
    PrimeFactors.generate(9).should == [3, 3]
  end
end
