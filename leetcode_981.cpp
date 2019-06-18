/**
 * @url https://leetcode.com/problems/time-based-key-value-store/
 * @note
Create a timebased key-value store class TimeMap, that supports two operations.

1. set(string key, string value, int timestamp)

Stores the key and value, along with the given timestamp.
2. get(string key, int timestamp)

Returns a value such that set(key, value, timestamp_prev) was called previously, with timestamp_prev <= timestamp.
If there are multiple such values, it returns the one with the largest timestamp_prev.
If there are no values, it returns the empty string ("").
 */

#include <iostream>
#include <map>
#include <unordered_map>
#include <string>

using namespace std;

class TimeMap {
public:
	TimeMap()
	{}

	void set(string key, string value, int timestamp) {
		_timemap[key].insert(pair<timestamp, value>);
	}

	string get(string key, int timestamp) {
		auto & it = _timemap[key].upper_bound(timestamp);
		return it == m[key].begin() ? "" : prev(it)->second;
	}

private:
	unordered_map<string key, map<int timestamp, string value>> _timemap;
};

int main(void)
{
	TimeMap timeMap;

	timeMap.set("foo", "h1", 1);
	timeMap.set()
}