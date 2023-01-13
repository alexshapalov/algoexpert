# You are given a string s of even length. Split this string into two halves of equal lengths,
# and let a be the first half and b be the second half.

# Two strings are alike if they have the same number of vowels ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U').
# Notice that s contains uppercase and lowercase letters.

# Return true if a and b are alike. Otherwise, return false.

# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  l = s.length/2

  a = s[..l-1]
  b = s[l..]

  count_vowels(a) == count_vowels(b) ? true : false
end

def count_vowels(c)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

  count = 0
  c.split('').each do |l|
    if vowels.include?(l)
      count +=1
    end
  end

  count
end


s = "book"
p halves_are_alike(s)
