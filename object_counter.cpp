#include "object_counter.hxx"

int main(void)
{
	X x1;
	X x2;
	Y y1;
	Y* y2 = new Y();

	cout << X::object_created << endl;
	cout << Y::object_created << endl;
	cout << Y::object_alive << endl;

	delete y2;

	cout << Y::object_alive << endl;
	return 0;
}