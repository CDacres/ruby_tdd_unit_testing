class EulerProblem1

  attr_accessor :prob1_array

  def initialize
    @prob1_array = []
  end

  def divisible_by?(num1, number_divisible_by)
    num1 % number_divisible_by == 0
  end

  def iterator(range_from, range_to)
    (range_from...range_to).each do |i|
      if divisible_by?(i, 3) == true
        @prob1_array << i
      elsif divisible_by?(i, 5) == true
        @prob1_array << i
      end
    end
  end

  def prob1_array_total
    @prob1_array.sum
  end

end

#Project Euler Problem 1
# check = EulerProblem1.new
# check.iterator(1,1000)
# puts check.prob1_array_total
