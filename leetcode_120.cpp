/**
 * 使用原地空间，时间复杂度为O(n^2)
 */
int minimumTotal(vector<vector<int>>& triangle) {
	for (int i = triangle.size() -2; i >= 0; --i) {
		for (int j = 0; j < i+1; j++) {
			triangle[i][j] += min(triangle[i+1][j], triangle[i+1][j+1]);
		}
	}
	return triangle[0][0];
}

class Solution {
public:
	/**
	 * 空间复杂度为O(n)，时间复杂度为O(n^2)
	 */
    int minimumTotal(vector<vector<int>>& triangle) {
        int * sum = new int[triangle.size()]();
        for (int i=0; i<triangle.size(); ++i) {
            sum[i] = triangle[triangle.size()-1][i];
        }
        
	    for (int i = triangle.size()-2; i >= 0; --i) {
		    for (int j = 0; j < i+1; j++) {
			    sum[j] = min(sum[j], sum[j+1]) + triangle[i][j];
		    }
	    }
	    return sum[0];
    }
};