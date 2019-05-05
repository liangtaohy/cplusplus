class Solution {
public:
	int maxProfit(vector<int>& prices) {
		if (!prices.size()) return 0;

		int minBuy = prices[0];
		int maxP = 0;

		for (int i = 1; i < prices.size(); ++i) {
			if (prices[i] < minBuy) {
				minBuy = prices[i];
			} else if (maxP < prices[i] - minBuy) {
				maxP = prices[i] - minBuy;
			}
		}

		return maxP;
	}
};