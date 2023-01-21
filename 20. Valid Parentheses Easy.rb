require 'pry'
require 'pry-nav'

# @param {String} s
# @return {Boolean}
# def is_valid(s)
#   s.each_char.with_index  do |c, idx|
#     counter = 0
#     if counter < s.length
#       s.each_char.with_index  do |c2, idx2|
#         if c = '(' and s[idx2+1] == ')'
#           p c
#         end
#       end
#     end
#     counter += 1
#   end
# end

# @param {String} s
# @return {Boolean}
# def is_valid(s)
#   l = s.length
#   a = []
#   s.each_char.with_index do |c, idx|
#     count = 0

#     if count <= l
#       if (c == '(' and s[idx+1] == ')') || (c == '[' and s[idx+1] == ']') || (c == '{' and s[idx+1] == '}')
#         a << true
#       else
#         a << false
#       end
#     end

#     count += 1
#   end
#   p a

#   return a.any?(false) ? false : true
# end

# def is_valid(s)
#   l = s.length
#   a = []

#   pair1 = "{}"
#   pair2 = "[]"
#   pair3 = "()"

#   str = ''

#   s.each_char.with_index do |i, idx|
#     s.each_char.with_index do |y, idx|
#       count = 0

#       if count <= l
#         str = i + y
#         if str == pair1 || str == pair2 || str == pair3
#           a << true
#         else
#           a << false
#         end
#       end

#       count += 1
#     end
#   end

#   p a

#   return a.any?(false) ? false : true
# end

# s = "{[]}"
# s = "(){}"
# s = "{}[)"


def is_valid(s)
	brackets = {
		'}' => '{',
		')' => '(',
		']' => '['
	}

	stack = []
	s.each_char do |ch|
		if stack.last && stack.last == brackets[ch]
			stack.pop
		else
			stack << ch
		end
	end

	stack.empty?
end

s = "((()))"
p is_valid(s)
