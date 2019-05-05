class Solution {
public:
    double pow(double x, int n) {
        if (n == 0) return 1;
        if (n == 1) return x;
        double t = pow(x, n/2);
        if (n % 2 == 0) {
            return t*t;
        }
        return t*t*x;
    }
    
    double myPow(double x, int n) {
        if (n < 0) {
            return 1/pow(x, n);
        }
        return pow(x,n);
    }
};