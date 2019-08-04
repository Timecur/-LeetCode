#include <iostream>
#include <vector>

using namespace std;

int main()
{
	int n, a, x;
	while (cin >> n >> a >> x){
		vector<int> v(n);
		int sum = 0;
		for (int i = 0; i < n; i++){
			cin >> v[i];
			sum += v[i];
		}
		int ret = a*x * 60;
		int tmp = (8 - x) * 60;
		if ((ret+tmp) >= sum){
			if (ret >= sum){
				if (sum%a == 0){
					cout << sum / a << endl;
					continue;
				}
				else{
					cout << sum / a + 1 << endl;
					continue;
				}
			}
			else{
				cout << (sum - ret) + x * 60 << endl;
				continue;
			}
		}
		else{
			cout << 0 << endl;
			continue;
		}
	}

	return 0;
}
