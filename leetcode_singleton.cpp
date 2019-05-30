/**
 * https://preshing.com/20130930/double-checked-locking-is-fixed-in-cpp11/
 * For c++ singleton in thread-safe mode, DCLP should be used or static Initializer or memory barriers
 */
#include <atomic>
#include <iostream>
#include <mutex>

template <class T>
class Singleton
{
private:
	static std::atomic<T*> sInst;
	static std::mutex m_mutex;

protected:
	~Singleton() {
		std::cout << "~Singleton() called" << std::endl;
	}
	Singleton() {
		std::cout << "Singleton() called" << std::endl;
	}

private:
	Singleton(const Singleton<T>&) = delete;
	Singleton<T>& operator= (const Singleton<T>&) = delete;

public:
	/**
	 * Singleton mode 1
	 */
	static T* instance() {
		T* tmp = sInst.load(std::memory_order_relaxed);
    	std::atomic_thread_fence(std::memory_order_acquire);
		if (tmp == nullptr) {
			std::lock_guard<std::mutex> lock(m_mutex);
			tmp = sInst.load(std::memory_order_relaxed);
			if (tmp == nullptr) {
				tmp = new T;
				std::atomic_thread_fence(std::memory_order_release);
				sInst.store(tmp, std::memory_order_relaxed);
			}
		}
		return tmp;
	}

	/**
	 * Singleton mode 2
	 * static Initializer
	 */
	static T& getInstance() {
		static T t;
		return &t;
	}
};

template <class T>
std::atomic<T*> Singleton<T>::sInst;

template <class T>
std::mutex Singleton<T>::m_mutex;

class Test: public Singleton<Test>
{
public:
	void hello() const {
		std::cout << "hello, world" << std::endl;
	}
};

int main(void)
{
	Test::instance()->hello();
	return 0;
}