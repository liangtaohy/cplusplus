class Solution {
public:
	bool isMatch(string s, string p) {
		int i = 0, j = 0, risk = -1, match = 0;
		int sLen = s.size(), pLen = p.size();

		while (i < sLen) {
			if (p[j] == '*') {
				match = i;
				risk = j++;
			} else if (j < pLen && (s[i] == p[j] || p[j] == '?')) {
				++i;
				++j;
			} else if (risk >= 0) {
				i = ++match;
				j = risk + 1;
			} else return false;
		}

		while (j < jLen && p[j] == '*') { ++j; }
		return j == jLen;
	}
};