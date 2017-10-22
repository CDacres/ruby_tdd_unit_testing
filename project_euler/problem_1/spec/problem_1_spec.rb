require 'spec_helper'

describe 'solving project euler prob 1' do

  before(:each) do
    @pb1 = EulerProblem1.new
  end

  it 'should divide a number correctly by 3' do
    expect(@pb1.divisible_by?(6,3)).to be true
  end

  it 'should divide a number correctly by 5' do
    expect(@pb1.divisible_by?(10,5)).to be true
  end

  it 'should divide a number incorrectly if given incorrect values' do
    expect(@pb1.divisible_by?(13,5)).to be false
  end

  it 'should respond to an array called sum' do
    expect(@pb1.prob1_array).to be_a(Array)
  end

  it 'should sum correctly all multiples of 3 and 5 in the range of 1 to 10' do
    @pb1.iterator(1,10)                     #Populates array
    expect(@pb1.prob1_array_total).to eq 23         #Checks total of array
  end

end
