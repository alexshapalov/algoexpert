# 409. Longest Palindrome Easy

# Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome
# that can be built with those letters.

# Letters are case sensitive, for example, "Aa" is not considered a palindrome here.


# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  # => {"a"=>2, "b"=>2, "c"=>1}
  return 1 if s.length == 1

  hash = s.chars.tally
  even_sum = has_odd = 0

  hash.each do |k,v|
    if v.even?
      even_sum += v
    else
      even_sum += v - 1
      has_odd = 1
    end
  end

  has_odd == 1 ? even_sum += has_odd : even_sum
end

s = "abccccddfgh"

# 7
p longest_palindrome(s)

