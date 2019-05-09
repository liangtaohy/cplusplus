#include <thread>
#include <iostream>
#include <vector>
#include <string>
#include <sstream>

void hello()
{
	std::string s("hello from thread ");
	std::ostringstream ss;
	ss << std::this_thread::get_id() << std::endl;
	s.append(ss.str());
	std::cout << s;
}

int main(void)
{
	std::vector<std::thread> threads;

	for(int i=0;i<5;i++) {
		threads.push_back(std::thread(hello));
	}

	for(auto& thread : threads) {
		thread.join();
	}

	return 0;
}