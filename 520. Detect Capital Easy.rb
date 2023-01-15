# @param {String} word
# @return {Boolean}

# def capitalize_upcase_downcase(word)
#   word == word.capitalize || word == word.upcase || word == word.downcase
# end

# def detect_capital_use(word)
#   return true if capitalize_upcase_downcase(word)

#   false
# end

### OR

def detect_capital_use(word)
  /^[a-z]+$/ === word || /^[A-Z]+$/ === word || /^[A-Z][a-z]+$/ === word
end

### OR

def detect_capital_use(word)
  [word.capitalize, word.upcase, word.downcase].include?(word) ? true : false
end

word = "USA"
p detect_capital_use(word)
