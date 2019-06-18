#include <string.h>
#include <stdlib.h>

char** paginate(int resultPerPage, int resultsCount, char** results, int* resultCount)
{
	int pages = resultsCount / resultPerPage + 1;
	int total = resultsCount + pages - 1;
	int index = 0;
	char * used = malloc(resultPerPage * sizeof(char));
	char ** n_results = malloc(total * sizeof(char *));

	static char *emptyLine = "";

	*resultCount = total;


	for (int i = 0; i < pages; i++) {
		int pagesize = 0;

		int flag;

		// reset used to empty
		memset((void*)used, '\0', resultPerPage * sizeof(char));

		// inserting
		for (int j = 0; j < resultsCount; j++) {
			if (results[j] != NULL) {
				flag = 0;
				for (int k = 0; k < resultPerPage; k++) {
					if (results[j][0] == used[k]) {
						flag = 1;
						break;
					}
				}
				if (flag == 0) {
					n_results[index++] = results[j];
					used[pagesize++] = results[j][0];
					results[j] = NULL;
				}
				if (pagesize >= resultPerPage) break;
			}
		}
		printf("used: %s\n", used);

		// padding
		if (pagesize < resultPerPage) {
			for (int j = 0; j < resultsCount && pagesize < resultPerPage; j++) {
				if (results[j] != NULL) {
					n_results[index++] = results[j];
					used[pagesize++] = results[j][0];
					results[j] = NULL;
				}
			}
		}

		// empty line
		n_results[index++] = emptyLine;
	}

	free(used);
	return n_results;
}

int main(int argc, char**argv)
{
	char * results[] = {
		"1,28,300.6,San Francisco",  
		"4,5,209.1,San Francisco",  
		"20,7,203.4,Oakland",  
		"6,8,202.9,San Francisco",  
		"6,10,199.8,San Francisco",  
		"1,16,190.5,San Francisco",  
		"6,29,185.3,San Francisco",  
		"7,20,180.0,Oakland",  
		"6,21,162.2,San Francisco",  
		"2,18,161.7,San Jose",  
		"2,30,149.8,San Jose",  
		"3,76,146.7,San Francisco",  
		"2,14,141.8,San Jose"
	};

	int resultsCount = 13;
	int resultCount = 0;
	char ** n_results = NULL;
	n_results = paginate(3, resultsCount, results, &resultCount);
	for (int i = 0; i < resultCount; i++) {
		printf("%s\n", n_results[i]);
	}
	return 0;
}