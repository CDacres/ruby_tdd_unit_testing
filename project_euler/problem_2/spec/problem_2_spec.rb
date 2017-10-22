require 'spec_helper'

describe 'solving project euler prob 2' do

  before(:each) do
    @pb2 = EulerProblem2.new
  end

  it 'should divide a number correctly by 2' do
    expect(@pb2.divisible_by?(4,2)).to be true
  end

  it 'should divide a number incorrectly if given incorrect values' do
    expect(@pb2.divisible_by?(13,2)).to be false
  end

  it 'should respond to an array called sum' do
    expect(@pb2.prob2_array).to be_a(Array)
  end

  it 'should generate a fibonacci sequence correctly for terms under 100' do
    @pb2.iterator(1,2,100)
    expect(@pb2.prob2_array).to eq([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
  end

  it 'should generate a fibonacci sequence of only even numbers correctly for terms under 100' do
    @pb2.iterator(1,2,100)
    expect(@pb2.prob2_even_array).to eq([2, 8, 34])
  end

  it 'should sum correctly all even numbers for terms under 100' do
    @pb2.iterator(1,2,100)
    expect(@pb2.prob2_even_array_total).to eq 44
  end

end
