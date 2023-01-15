# 724. Find Pivot Index

# Given an array of integers nums, calculate the pivot index of this array.

# The pivot index is the index where the sum of all the numbers
# strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.

# If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left.
# This also applies to the right edge of the array.

# Return the leftmost pivot index. If no such index exists, return -1.

def pivot_index(nums)
  return -1 if nums.length == 0

  nums.each_with_index do |_, idx|
    return idx if nums[...idx].sum == nums[idx+1..].sum
  end
  return -1
end

nums = [1,1,1,1,1]
# nums = [1,2,3,4,5,6]
p pivot_index(nums)
