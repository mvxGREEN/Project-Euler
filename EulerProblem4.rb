#####
#  Euler Problem #4
#  Finds largest palindrome that is the product of two three-digit numbers
#
#  MVX ~ 11/8/2017
#####

def largest_palindrome_product(min, max)
  max_palindrome = 0
  a = max
  while a >= min
    b = max
    while b >= a
      prod = a * b
      if is_palindrome?(prod) && prod > max_palindrome
        max_palindrome = prod
      end
      b -= 1
    end
  a -= 1
  end
  return max_palindrome
end

def is_palindrome?(num)
  text = num.to_s
  mid_index = (text.length / 2)

  one = text[0..(mid_index - 1)]
  two = text[mid_index..(text.length + 1)].reverse

  one.eql? two ? true : false
end

puts(largest_palindrome_product(100, 999).to_s)
