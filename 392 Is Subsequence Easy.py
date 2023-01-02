# 392. Is Subsequence

# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some
# (can be none) of the characters without disturbing the relative positions of the remaining characters.
# (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

class Solution(object):
    # def isSubsequence(self, s, t):
    #     new_string = ''
    #     # new_string = []
    #     temp_index = 0

    #     for index, i in enumerate(t):
    #         temp_index = index

    #         print(temp_index)

    #         for y in s:
    #             if i == y:
    #                 new_string = new_string + y

    #     print(new_string)

        # if s == new_string:
        #   print(True)
        # else:
        #   print(False)


    def isSubsequence(self, s: str, t: str) -> bool:
        if len(s) == 0:
            return True
        seen = 0
        for c in t:
            if s[seen] == c:
                seen += 1
            if seen == len(s):
                return True
        return False


s = "abc"
t = "angchnb"

sol = Solution()
sol.isSubsequence(s, t)
