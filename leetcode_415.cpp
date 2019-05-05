/**
 * Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.

 * Note:

 * The length of both num1 and num2 is < 5100.
 * Both num1 and num2 contains only digits 0-9.
 * Both num1 and num2 does not contain any leading zero.
 * You must not use any built-in BigInteger library or convert the inputs to integer directly.
 */
class Solution {
public:
    string addStrings(string num1, string num2) {
		int len1 = num1.length(), len2 = num2.length(), len3 = 0;
		int carry = 0, x = 0, y = 0;

		len3 = len1 > len2 ? len1 + 1 : len2 + 1;

		string num3(len3, '\0');

		while(len1 > 0 || len2 > 0) {
			x = len1 > 0 ? num1[len1 - 1] - '0' : 0;
			y = len2 > 0 ? num2[len2 - 1] - '0' : 0;

			int v = x + y + carry;
			carry = v / 10;
			v = v % 10;

			num3[len3-1] = v + '0';

			--len3;
			if (len1>0) --len1;
			if (len2>0) --len2;
		}
		if (carry) {
			num3[len3-1] = '1';
		} else {
			num3.erase(num3.begin());
		}

		return num3;
	}
};