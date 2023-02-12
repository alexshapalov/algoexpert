# 392. Is Subsequence

# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some
# (can be none) of the characters without disturbing the relative positions of the remaining characters.
# (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

class Solution(object):
    def isSubsequence(self, s: str, t: str) -> bool:
        S_LEN = len(s) # 3
        T_LEN = len(t)

        s_left = t_right = 0
        while s_left < S_LEN and t_right < T_LEN:
            # move both pointers or just the right pointer
            if s[s_left] == t[t_right]:
                s_left += 1

                # a == a # 1
                # b == b # 2
                # c ==   c # 3

            t_right += 1

        return s_left == S_LEN

s = "abc"
t = "iiabcuuu"

if __name__ == "__main__":
    sol = Solution()
    sol.isSubsequence(s, t)

    print(sol.isSubsequence(s, t))
