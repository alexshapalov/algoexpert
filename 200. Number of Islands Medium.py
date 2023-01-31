# Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water),
# return the number of islands.

# An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically.
# You may assume all four edges of the grid are all surrounded by water.


# Example 1:

# Input: grid = [
#   ["1","1","1","1","0"],
#   ["1","1","0","1","0"],
#   ["1","1","0","0","0"],
#   ["0","0","0","0","0"]
# ]
# Output: 1


grid = [
	["1", "1", "0"],
	["1", "0", "1"],
	["1", "0", "0"],
	["1", "0", "1"]
]

class Graph:
	def dfs(self, grid, i, j):
		grid[i][j] = '0'
		lst = [(i-1, j), (i+1, j), (i, j-1), (i, j+1)]
		for row, col in lst:
			if row >= 0 and col >= 0 and row < len(grid) and col < len(grid[row]) and grid[row][col] == '1':
				self.dfs(grid, row, col)

	def numIslands(self, grid):
		island = 0
		for i in range(len(grid)):
			for j in range(len(grid[i])):
				if grid[i][j] == "1":
					self.dfs(grid, i, j)
					island += 1
		return island

g = Graph().numIslands(grid)
print(g)
