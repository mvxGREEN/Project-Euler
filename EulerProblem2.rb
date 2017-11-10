#####
#  Euler Problem #2
#  Sums even fib #'s that do not exceed 4 million
#
#  MVX ~ 11/8/2017
#####

def fib(max_value)
  sum = 0
  current_fib = 1
  last_fib = 0

  while current_fib <= max_value  # evaluates fib #'s from 1 to the given value
    # if value is even, add to sum
    if current_fib % 2 == 0
      sum += current_fib
    end

    # change vars to next fib #
    temp = last_fib
    last_fib = current_fib
    current_fib = temp + last_fib
  end

  return "#{sum}"
end

puts(fib(4000000))
