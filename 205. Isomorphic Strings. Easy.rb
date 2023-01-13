# @param {String} s
# @param {String} t
# @return {Boolean}

# Input: s = "egg", t = "add"
# Output: true
def is_isomorphic(s, t)
  words_values(s) == words_values(t)  ? true : false
end

def words_values(str)
  words = {}
  str.split('').each do |l|
    count = 0
    if !words.include?(l)
      str.split('').each do |y|
        count += 1 if l == y
      end
      words[l] = count
    end
  end

  words.values.sort
end

s = "bbbaaaba"
t = "aaabbbba"

is_isomorphic(s, t)
