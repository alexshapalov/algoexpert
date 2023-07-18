# 344. Reverse String

# Write a function that reverses a string. The input string is given as an array of characters s.

# Input: s = ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]

class Solution:
    def reverseString(self, s: list[str]) -> None:
        new_arr = []

        for i in range(len(s)):
            new_arr.insert(0, s[i])

        return new_arr

s = ["h","e","l","l","o"]
print(Solution().reverseString(s))
