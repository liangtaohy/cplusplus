#include <iostream>
using namespace std;
int main(void)
{
	// auto
	auto a = "abc";
	// nullptr
	auto b = nullptr;
	auto c = 1;

	// range iterator
	int nArr[5] = {1,2,3,4,5};
	for (int &x : nArr) {
		cout << x << ",";
	}
	cout << endl;

	// Lambda
	// [capture](params)->ret { body};
	
	auto f = [c] (int i){ return i+c+10; };

	cout << f(1) << endl; // 12

	// atomic for lockless concurrent programming
	return 0;
}