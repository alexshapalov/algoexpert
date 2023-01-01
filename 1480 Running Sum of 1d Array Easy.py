class Solution(object):
    def runningSum(self, nums):
        i = 1
        print(len(nums))

        while i<len(nums):
            nums[i] = nums[i] + nums[i-1]

            print(nums[i])
            print(nums[i-1])

            i = i + 1

        print(nums)

# nums = [1,1,1,1,1]
nums = [1,2,3,4]
# Output: [1,3,6,10]
s = Solution()
s.runningSum(nums)
