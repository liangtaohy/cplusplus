#include <iostream>

using std::cout;

class Solution {
public:
    bool reorderedPowerOf2(int N) {
        int A[10] = {0};
        int B[10] = {0};

        count(A, N);

        for (int i = 0; i < 31; i++) {
            count(B, int(1<<i));
            if (array_equals(A, B)) {
                return true;
            }
            memset((void*)B, 0, 10*sizeof(int));
        }
        return false;
    }
    
    bool array_equals(const int* A, const int* B) {
        for (int i = 0; i < 10; i++) {
            if (*(A+i) == *(B+i)) {
                continue;
            } else {
                return false;
            }
        }
        return true;
    }
    
    int* count(int* ans, int N) {
        while(N > 0) {
            ans[N % 10]++;
            N /= 10;
        }
        
        return ans;
    }
};

int main(void)
{
    Solution s;
    std::cout << s.reorderedPowerOf2(46) << std::endl;
    return 0;
}