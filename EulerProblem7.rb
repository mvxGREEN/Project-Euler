#####
# Euler Problem #7
# Finds the 10,001st prime number
#
# MVX ~ 11/13/17
#####

def find_prime(num)
  counter = 0
  a = 2
  while counter < num
    if is_prime?(a)
      counter += 1
    end
    a += 1
  end
  a
end

def is_prime?(num)
  (2..(num-1)).each { |x| if (num % x) == 0 then return false end}
  true
end

puts(find_prime(10001).to_s)
