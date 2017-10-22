class EulerProblem2

  attr_accessor :prob2_array
  attr_accessor :prob2_even_array

  def initialize
    @prob2_array = []
    @prob2_even_array = []
  end

  def divisible_by?(num1, number_divisible_by)
    num1 % number_divisible_by == 0
  end

  def iterator(first_num, second_num, limit)
    i = first_num
    j = second_num
    @prob2_array << i                   #Add first two numbers to array
    @prob2_array << j
    if divisible_by?(i, 2)              #If first number is even, add to even array
      @prob2_even_array << i
    end
    if divisible_by?(j, 2)              #If second number is even, add to even array
      @prob2_even_array << j
    end
    k = first_num + second_num          #Create third number
    while (k < limit)
      @prob2_array << k                 #Add third number to array
      if divisible_by?(k, 2)
        @prob2_even_array << k          #If third number is even, add to even array
      end
      i = j                             #First number becomes second
      j = k                             #Second number becomes third
      k = i + j                         #Third number is sum of first number and second number
    end
  end

  def prob2_even_array_total
    @prob2_even_array.sum
  end

end

# solve = EulerProblem2.new
# solve.iterator(1,2,4000000)
# puts(solve.prob2_even_array_total)

#Alison's Solution
# class EulerProblem2
#
#   def initialize
#     @prob2_array = []
#   end
#
#   def fib(num1)
#     a = [0]
#     (num1 + 1).times do |i|
#       if i==0
#         a[i] = 0
#       elsif i==1
#         a[i] = 1
#       else
#         a[i] = a[i - 1] + a[i - 2]
#       end
#     end
#     return a[num1]
#   end
#
# end
#
# problem = EulerProblem2.new
#
# puts problem.fib(6)
