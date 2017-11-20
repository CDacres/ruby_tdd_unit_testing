require 'spec_helper'

describe Wordcount do

  before(:each) do
    @test = Wordcount.new
    @sentence = "Ollie is in leeds and Ollie wants to come home."
    @length = 10
  end

  it 'should convert a sentence into an array of words' do
    expect(@test.split_into_words(@sentence)).to be_a(Array)
    p @test.split_into_words(@sentence)
  end

  it 'should return a hash' do
    expect(@test.count_words(@sentence)).to be_a(Hash)
    p @test.count_words(@sentence)
  end

end
