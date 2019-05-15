#include <errno.h>
#include <linux/futex.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/syscall.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

int futex(int *uaddr, int op, int val, const struct timespec *timeout, int *uaddr2, int val3) {
	return syscall(SYS_futex, uaddr, op, val, timeout, uaddr2, val3);
}

void wait_on_futex_value(int *uaddr, int val) {
	int r = futex(uaddr, FUTEX_WAIT, val, NULL, NULL, 0);
	while(1) {
		if (r == -1) {
			if (errno != EAGAIN) {
				perror("futex");
				exit(1);
			}
		} else if (r == 0) {
			if (*uaddr == val) {
				return;
			}
		} else {
			abort();
		}
	}
}

void wake_futex_blocking(int *uaddr) {
	int r = futex(uaddr, FUTEX_WAKE, 1, NULL, NULL, 0);
	while(1) {
		if (r == -1) {
			perror("futex wake");
			exit(1);
		} else if (r > 0) {
			return;
		}
	}
}

int main(int argc, char** argv) {
	int shm_id = shmget(IPC_PRIVATE, 4096, IPC_CREAT | 0666);
	if (shm_id < 0) {
		perror("shmget");
		exit(1);
	}
	int * sdata = (int *)shmat(shm_id, NULL, 0);
	if ((void*)sdata == (void*)-1) {
		perror("shmat");
		exit(1);
	}
	*sdata = 0;

	printf("futex wait, pid: %d\n", getpid());
	futex(sdata, FUTEX_WAIT, 0, NULL, NULL, 0);

	int child = fork();
	if (child < 0) {
		perror("fork");
		exit(1);
	}

	if (child == 0) { // child process
		printf("child waiting for A\n");
		wait_on_futex_value(sdata, 0xA);

		printf("child writing B\n");
		*sdata = 0xB;
		wake_futex_blocking(sdata);
	} else {
		printf("parent writing C\n");
		*sdata = 0xC;
		wake_futex_blocking(sdata);

		printf("parent waiting for B");
		wait_on_futex_value(sdata, 0xC);

		wait(NULL);
		shmdt(sdata);
	}

	return 0;
}