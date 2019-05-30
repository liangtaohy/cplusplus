#include <iostream>

using namespace std;

template<typename T>
class Counter
{
public:
	static int object_created;
	static int object_alive;

	Counter() {
		++object_created;
		++object_alive;
	}

	Counter(const Counter&) {
		++object_created;
		++object_alive;
	}
protected:
	~Counter() {
		--object_alive;
	}
};

template<typename T>
int Counter<T>::object_created(0);

template<typename T>
int Counter<T>::object_alive(0);

class X: Counter<X>
{
};

class Y: Counter<Y>
{
};