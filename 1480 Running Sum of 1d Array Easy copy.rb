class Solution
  def runningSum(nums)
    i = 1

    while i < nums.length
      nums[i] = nums[i] + nums[i-1]
      i = i + 1
		end
		p nums
	end
end

# nums = [1,1,1,1,1]
nums = [1,2,3,4]
# Output: [1,3,6,10]
s = Solution.new
s.runningSum(nums)
