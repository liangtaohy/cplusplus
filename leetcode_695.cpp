/**
 * @see https://leetcode.com/problems/max-area-of-island/
 * @desc
 * Given a non-empty 2D array grid of 0's and 1's, an island is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.
 *
 * Find the maximum area of an island in the given 2D array. (If there is no island, the maximum area is 0.)
 *
 * Example 1:
 *
 *[[0,0,1,0,0,0,0,1,0,0,0,0,0],
 * [0,0,0,0,0,0,0,1,1,1,0,0,0],
 * [0,1,1,0,1,0,0,0,0,0,0,0,0],
 * [0,1,0,0,1,1,0,0,1,0,1,0,0],
 * [0,1,0,0,1,1,0,0,1,1,1,0,0],
 * [0,0,0,0,0,0,0,0,0,0,1,0,0],
 * [0,0,0,0,0,0,0,1,1,1,0,0,0],
 * [0,0,0,0,0,0,0,1,1,0,0,0,0]]
 * Given the above grid, return 6. Note the answer is not 11, because the island must be connected 4-directionally.
 */

#include <iostream>
#include <vector>
#include <queue>

using namespace std;

class Solution {
public:
	int maxAreaOfIsland(vector<vector<int>>& grid) {
		int m = grid.size(), n = grid[0].size();
		int ans = 0;

		for (int i = 0; i < m; i++) {
			for (int j = 0; j < n; j++) {
				if (grid[i][j] == 1) {
					ans = max(ans, bfs_area(grid, i, j));
				}
			}
		}

		return ans;
	}

private:
	int bfs_area(vector<vector<int>>& grid, int row, int col) {
		static int dir[5] = {-1, 0, 1, 0, -1};

		int m = grid.size(), n = grid[0].size(), area = 1;

		queue<pair<int,int>> q;
		q.push({row, col});
		grid[row][col] = 2;

		while(!q.empty()) {
			int x = q.front().first, y = q.front().second;
			q.pop();

			for (int i = 0; i < 4; i++) {
				int new_x = x + dir[i];
				int new_y = y + dir[i+1];
				if (new_x>=0 && new_y>=0 && new_x<m && new_y<n && grid[new_x][new_y] == 1) {
					grid[new_x][new_y] = 2;
					area++;
					q.push({new_x, new_y});
				}
			}
		}

		return area;
	}
};

int main(void)
{
	vector<vector<int>> grid;
	//grid.push_back({0,0,0,0,0,0,0,0});

	grid.push_back({0,0,1,0,0,0,0,1,0,0,0,0,0});
	grid.push_back({0,0,0,0,0,0,0,1,1,1,0,0,0});
	grid.push_back({0,1,1,0,1,0,0,0,0,0,0,0,0});
	grid.push_back({0,1,0,0,1,1,0,0,1,0,1,0,0});
	grid.push_back({0,1,0,0,1,1,0,0,1,1,1,0,0});
	grid.push_back({0,0,0,0,0,0,0,0,0,0,1,0,0});
	grid.push_back({0,0,0,0,0,0,0,1,1,1,0,0,0});
	grid.push_back({0,0,0,0,0,0,0,1,1,0,0,0,0});


	Solution* s = new Solution();
	cout << s->maxAreaOfIsland(grid) << endl;
	return 0;
}