#include <iostream>
#include <thread>
#include <vector>

struct Counter
{
	int value;

	Counter():value(0) {}

	void increment()
	{
		++value;
	}
};

int main(void)
{
	Counter counter;
	std::vector<std::thread> threads;

	for(int i=0;i<5;i++) {
		threads.push_back(std::thread([&counter]() {
			for(int j=0;j<100;j++) {
				counter.increment();
			}
		}));
	}

	for(auto& thread : threads) {
		thread.join();
	}

	std::cout << counter.value << std::endl;
	return 0;
}