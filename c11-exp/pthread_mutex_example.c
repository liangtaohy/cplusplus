#include<stdio.h>
#include<string.h>
#include<pthread.h>
#include<stdlib.h>
#include<unistd.h>

#define THREAD_NUM 4

pthread_t tid[THREAD_NUM];
int counter;
pthread_mutex_t mutex;

void* tick(void* arg) {
	getchar();
	pthread_mutex_lock(&mutex);
	long i = 0;
	counter++;
	//printf("thread %d job %d started", pthread_self(), counter);
	for (;i<2;i++);
	//printf("thread %d job %d finished", pthread_self(), counter);
	pthread_mutex_unlock(&mutex);
	return NULL;
}

int main(void)
{
	int i;

	if (pthread_mutex_init(&mutex, NULL)!=0) {
		//printf("\nmutex init failed\n");
		exit(1);
	}
	for(i = 0; i < THREAD_NUM; i++) {
		int err = pthread_create(&tid[i], NULL, &tick, NULL);
		if (err != 0) {
			//printf("\nthread create failed\n");
			exit(1);
		}
	}

	pthread_join(tid[0], NULL);
	pthread_join(tid[1], NULL);
	pthread_mutex_destroy(&mutex);
	return 0;
}