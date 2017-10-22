require 'spec_helper'

describe Fizzbuzz do
  before(:each) do
    @play = Fizzbuzz.new         #Creates new instance of class
  end

  it 'should run from 1 to 100' do
    test = @play.run(1,100)      #Runs Fizzbuzz to build array of 1 to 100
    expect(test.first).to eq 1        #Is first number 1?
    expect(test.length).to eq 100     #Is array 100 numbers long?
  end
  it 'should output Fizz if divisible by 3' do
    test = @play.run(1,100)      #Runs Fizzbuzz to build array of 1 to 100
    expect(test[2]).to eq 'Fizz'      #Test for number 3, Fizz
  end
  it 'should output Buzz if divisible by 5' do
    test = @play.run(1,100)      #Runs Fizzbuzz to build array of 1 to 100
    expect(test[4]).to eq 'Buzz'      #Test for number 5, Buzz
  end
  it 'should output FizzBuzz if divisible by 3 and 5' do
    test = @play.run(1,100)      #Runs Fizzbuzz to build array of 1 to 100
    expect(test[14]).to eq 'FizzBuzz' #Test for number 15, FizzBuzz
  end
end
