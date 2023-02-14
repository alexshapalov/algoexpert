# 26. Remove Duplicates from Sorted Array

# class Solution:
# 	def removeDuplicates(self, nums: list[int]) -> int:
# 		newl = []
# 		for i in nums:
# 			if i not in newl:
# 				newl.append(i)

# 		for i in range(len(newl)):
# 			newl.append(None)

# 		return f"{len(newl)}, nums = {newl}"

# nums = [1,1,1,2,2,3]

# print(Solution().removeDuplicates(nums))

# class Solution:
# 	def removeDuplicates(self, nums: list[int]) -> int:
# 		size = len(nums)
# 		insertIndex = 1
# 		for i in range(1, size):
# 			# Found unique element
# 			if nums[i - 1] != nums[i]:
# 				# Updating insertIndex in our main array
# 				nums[insertIndex] = nums[i]
# 				# Incrementing insertIndex count by 1
# 				insertIndex = insertIndex + 1
# 		return insertIndex

# nums = [1,1,2,2,3,3]

# print(Solution().removeDuplicates(nums))


# Calculate unique element
# class Solution:
# 	def removeDuplicates(self, nums: list[int]) -> int:
# 		size = len(nums)
# 		countIndex = 1
# 		for i in range(1, size):
# 			if nums[i - 1] != nums[i]:
# 				print(nums[i-1], nums[i], countIndex)
# 				nums[countIndex] = nums[i]
# 				countIndex += 1
# 		return countIndex

# nums = [1,1,1,1,1,1,1,3,3,4,4,4,5,5,5]

# print(Solution().removeDuplicates(nums))


# Increment i index by 1 till we reach end of the array

# Note: After reaching the end of the array, our insertIndex variable will hold the count of unique elements in our input array.
class Solution:
	def removeDuplicates(self, nums: list[int]) -> int:
		size = len(nums)
		countIndex = 1
		for i in range(1, size):
			if nums[i - 1] != nums[i]:
				print(nums[i-1], nums[i], countIndex)
				nums[countIndex] = nums[i]
				countIndex += 1
		return countIndex

nums = ['a', 'b', 'c', 'c']

print(Solution().removeDuplicates(nums))
