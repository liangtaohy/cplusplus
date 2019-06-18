class Solution {
public:
	int maximalSquare(vector<vector<char>>& matrix) {
		if (matrix.empty()) return 0;
        int height = matrix.size(), width = matrix[0].size();
		int ans = 0;
		for (int i = 0; i < height; i++) {
			for (int j = 0; j < width; j++) {
                if (matrix[i][j] != '1') continue;
                int step = 0;
				for (step = 0; step < min(height - i, width - j); step++) {
					if (matrix[i+step][j] == '1' && matrix[i][j+step] == '1') {ans = max(ans, (step+1)*(step+1));continue;}
					else break;
				}
                
			}
		}
		return ans;
	}
};