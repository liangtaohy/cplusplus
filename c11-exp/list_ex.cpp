#include <iostream>
#include <list>

int main(void)
{
	std::list<std::pair<int, char>> mylist;

	mylist.emplace_front(10, 'a');
	mylist.emplace_front(11, 'b');
	mylist.emplace_front(12, 'c');

	for (auto& x: mylist) {
		std::cout << "(" << x.first << "," << x.second << ")" << std::endl;
	}

	return 0;
}