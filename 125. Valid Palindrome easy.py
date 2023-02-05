#  https://leetcode.com/problems/valid-palindrome/

# 125. Valid Palindrome

# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and
# removing all non-alphanumeric characters, it reads the same forward and backward.
# Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.

# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.

class Solution:
    def isPalindrome(self, s: str) -> bool:
        new_string = ''
        for w in s:
            if w.isalpha() or w.isnumeric():
                new_string += w
                new_string = new_string.strip().casefold()

        if new_string == new_string[::-1]:
            return True

s = "aA! aAsdfS0 aa"
print(Solution().isPalindrome(s))

