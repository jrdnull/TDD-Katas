require 'rspec'
require_relative 'fizzbuzz'

describe FizzBuzz do
  it 'should return Fizz given a multiple of three' do
    FizzBuzz.new(3).to_s.should == 'Fizz'
  end

  it 'should return Buzz given a multiple of five' do
    FizzBuzz.new(5).to_s.should == 'Buzz'
  end

  it 'should return FizzBuzz given a multiple of both three and five' do
    FizzBuzz.new(15).to_s.should == 'FizzBuzz'
  end

  it 'should return the number otherwise' do
    FizzBuzz.new(1).to_s.should == '1'
  end
end
