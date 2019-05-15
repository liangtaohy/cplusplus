#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/param.h>

typedef unsigned atomic_int_t;
typedef volatile unsigned int atomic_t;

atomic_int_t atomic_cmp_swap(atomic_t *lock, atomic_int_t old, atomic_int_t set)
{
	atomic_int_t res;

	__asm__ volatile (
		"	lock;	"
		"	cmpxchgl %3, %1;	"
		: "=a"(res)
		: "m"(*lock), "a"(old), "r"(set)
		: "cc", "memory"
	);

	return res;
}

int main(void)
{
	atomic_int_t s = 1;

	atomic_int_t old = atomic_cmp_swap(&s, 0, 2);
	
	printf("swap failed, old: %d, s: %d\n", old, s);
	old = atomic_cmp_swap(&s, 1, 2);
	printf("swap success, old: %d, s: %d\n", old, s);
	return 0;
}