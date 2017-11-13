#####
# Euler Problem #5
# Finds the smallest positive multiple of all numbers 1-20
#
# MVX ~ 11/11/17
#####

def smallest_multiple(start)
  a = start
  while !(is_multiple_of_all?(a))
    a += 20
  end
  a.to_s
end

def is_multiple_of_all?(num)
  20.downto(2) { |x| if (num % x) != 0 then return false end }
  true
end

puts(smallest_multiple(20))
