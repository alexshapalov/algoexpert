# 344 * . Reverse String

# Write a function that reverses a string. The input string is given as an array of characters s.

# You must do this by modifying the input array in-place with O(1) extra memory.

# Input: s = ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]

class Solution:
    def reverseString(self, s: list[str]) -> None:
        for i in range(len(s)):
            while i < i + 1:
                temp = s[i]
                swap_index = len-i-1
                s[i] = s[swap_index]
                s[swap_index] = temp

                return s

s = ["h","e","l","l","o"]
print(Solution().reverseString(s))
