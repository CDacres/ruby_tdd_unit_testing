class Fizzbuzz
  def run(num1,num2) #Run function, creates array of values, able to set range here.
    array = []        #Create empty array.
    for i in num1..num2             #FizzBuzz Ruby code from previous work.
      if i % 3 == 0 && i % 5 == 0
        array.push("FizzBuzz")
      elsif i % 3 == 0
        array.push("Fizz")
      elsif i % 5 == 0
        array.push("Buzz")
      else
        array.push(i)
      end
      i += 1
    end
    array
  end
end
