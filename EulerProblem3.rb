#####
#  Euler Problem #3
#  Finds largest prime factor of 600851475143
#
#  MVX ~ 11/8/2017
#####

def largest_prime_factor(num)
  answer = 0
  sqrt = Math.sqrt(num)
  (2..sqrt).each  { |x| if (num % x) == 0 && is_prime?(x) then answer = x end }
  return "#{answer}"
end

def is_prime?(num)
  (2..(num-1)).each { |x| if (num % x) == 0 then return false end}
  true
end

puts(largest_prime_factor(600851475143))
