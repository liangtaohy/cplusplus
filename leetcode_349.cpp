/**
 * time complicity: O(a+b)
 */
#include <iostream>
#include <vector>

using namespace std;

class Solution
{
public:
	vector<int> intersect(const vector<int>& a, const vector<int>& b)
	{
		vector<int> result;
		int i = 0;
		int j = 0;
		while(j<b.size()) {
			for(; i < a.size(); i++) {
				if (b[j] == a[i]) {
					result.push_back(b[j]);
				} else if (b[j] > a[i]) {
					continue;
				} else {
					break;
				}
			}
			j++;
		}
		return result;
	}
};

int main(void)
{
	Solution s;
	vector<int> a({1,3,6,7});
	vector<int> b({2,3,5,7,9,10});
	vector<int> result = s.intersect(a,b);
	for (auto x:result)
		cout << x << ",";
	cout << endl;
	return 0;
}