#include <string>
#include <iostream>

using namespace std;

class Base1
{
public:
	Base1():x(3) {}
public:
	int x;
};

class Derive1 : public Base1
{
public:
	Derive1():y(4),z(5){}
	~Derive1(){}
public:
	int y;
private:
	int z;
};

int main(void)
{
	string a("hello,world");
	string b(a);
	string c(a.c_str());

	Derive1* d1 = new Derive1();

	cout << "Derive1::y pointer: " << &(d1->y) << "; value: " << d1->y << endl;
	return 0;
}