#####
# Euler Problem #6
# Finds the difference between the sum of squares and
# the square of the sum [1-100]
#
# MVX ~ 11/13/17
#####

def sum_of_squares()
  sum = 0
  (1..100).each { |x| sum += (x ** 2) }
  sum
end

def square_of_sum()
  sum = 0
  (1..100).each { |x| sum += x }
  sum ** 2
end

puts((square_of_sum() - sum_of_squares()).to_s)
