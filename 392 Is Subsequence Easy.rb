# 392. Is Subsequence

# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some
# (can be none) of the characters without disturbing the relative positions of the remaining characters.
# (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

def isSubsequence(s, t)
	left = s.length
	right = t.length

	p_left = 0
	p_right = 0

	while p_left < left and p_right < right
		# move both pointers or just the right pointer
		if s[p_left] == t[p_right]
			p_left += 1
		end
		p_right += 1
	end

	return p_left == left
end

s = "abc"
t = "ahbgdc"
p isSubsequence(s, t)

