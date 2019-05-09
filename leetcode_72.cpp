/*
 * Given two words word1 and word2, find the minimum number of operations required to convert word1 to word2.
 *
 * You have the following 3 operations permitted on a word:

 * Insert a character
 * Delete a character
 * Replace a character
 * Example 1:

 * Input: word1 = "horse", word2 = "ros"
 * Output: 3
 * Explanation: 
 * horse -> rorse (replace 'h' with 'r')
 * rorse -> rose (remove 'r')
 * rose -> ros (remove 'e')
 */

#include <iostream>
#include <vector>

using namespace std;

class Solution {
public:
    int minDistance(string word1, string word2) {
    	int m = word1.size(), n = word2.size();

        vector<vector<int>> d(m+1, vector<int>(n+1, 0));

        for (int i = 0; i <= m; i++) {
        	d[i][0] = i;
        }

        for (int j = 0; j <= n; j++) {
        	d[0][j] = j;
        }

        for (int i = 1; i <= m; i++) {
        	for (int j = 1; j <= n; j++) {
        		if (word1[i-1] == word2[j-1]) {
        			d[i][j] = d[i-1][j-1];
        		} else {
        			d[i][j] = min(d[i-1][j] + 1, min(d[i][j-1] + 1, d[i-1][j-1] + 1));
        		}
        	}
        }

        return d[m][n];
    }
};