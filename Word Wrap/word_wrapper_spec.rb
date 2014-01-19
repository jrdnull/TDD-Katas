require 'rspec'
require_relative 'word_wrapper'

describe WordWrapper do
  before(:all) do
    @wrapper = WordWrapper.new
  end

  it 'should return the same if shorter than the line length' do
    @wrapper.wrap('dog', 5).should == "dog"
  end

  it 'should break a word up if its longer than the line length' do
    @wrapper.wrap('platypus', 5).should == "platy\npus"
  end

  it 'should break up a word multiple times if its longer than the line length' do
    @wrapper.wrap('platypus', 2).should == "pl\nat\nyp\nus"
  end

  it 'should break on previous space' do
    @wrapper.wrap('platypus likes to dance', 10).should == "platypus\nlikes to\ndance"
  end

  it 'should break on the next space if the word is the same length as the line length' do
    @wrapper.wrap('woof woof', 4).should == "woof\nwoof"
  end
end
