# 136. Single Number

# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# You must implement a solution with a linear runtime complexity and use only constant extra space.

# Or Uniq array


# First solution (not good)

# class Solution:
# 	def singleNumber(self, nums: list[int]) -> int:
# 		dub_list = []

# 		for i in nums:
# 			if i not in dub_list:
# 				dub_list.append(i)
# 			else:
# 				dub_list.remove(i)

# 		return dub_list

# nums = [1,1,2,2,3]
# print(Solution().singleNumber(nums))

import collections as co

class Solution:
    def singleNumber(self, nums: list[int]) -> int:
        hash_table = co.defaultdict(int)
        for i in nums:
            hash_table[i] += 1

        for i in hash_table:
            if hash_table[i] == 1:
                return i

nums = [1,1,2,2]
print(Solution().singleNumber(nums))
