class Solution {
public:
	int maximalSquare(vector<vector<char>>& matrix) {
		int height = matrix.size(), width = matrix[0].size();
		int ans = 0;
		for (int i = 0; i < height; i++) {
			for (int j = 0; j < width; j++) {
				for (int step = 0; step < min(height - i - 1, width - j - 1);) {
					if (matrix[i+step][j] == 1 && matrix[i][j+step] == 1) continue;
					else {
						ans = max(ans, (step+1)*(step+1));
						break;
					}
				}
			}
		}
		return ans;
	}
};