#include <iostream>

class Item
{
};

class People
{
public:
	People();
	~People();
	int test(){return 2;}
	void add();
	virtual int sayHi()
	{
		return 0;
	}
};

class Student : People
{
public:
	Student();
	~Student();
	int sayHi()
	{
		return 2;
	}
};

int main(void)
{
	std::cout << sizeof(class Item) << ", " << sizeof(class People) << std::endl;
	return 0;
}