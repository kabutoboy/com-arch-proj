#include <cmath>
#include <iomanip>
#include <iostream>
#include <vector>

using namespace std;

typedef long long unsigned int llu;

llu N, R;
vector<llu> A;

llu C(llu n, llu r) {
	if (n == 0 && r != 0) {
		return 0;
	}
	if (n == 0 || r == 0 || n == r) {
		return 1;
	}
	llu a = 0;
	if (n-1 >= 0) {
		a = A[(n-1) * R + r];
	}
	llu b = 0;
	if (n-1 >= 0 && r-1 >= 0) {
		b = A[(n-1) * R + (r-1)];
	}
	return a + b;
}

int main() {
	llu T;
	cin >> T;
	while (T-- > 0) {
		cin >> N >> R;
		N += 1;
		R += 1;
		A.clear();
		A.resize(N * R);
		for (llu i = 0; i < A.size(); i++) {
			A[i] = C(i / R, i % R);
		}
		llu ans = A[A.size() - 1];
		int d = ceil(log10(ans));
		for (llu i = 0; i < A.size(); i++) {
			if (i > 0 && i % R == 0) {
				cout << endl;
			}
			cout << setw(d) << A[i] << " ";
		}
		cout << endl;
		cout << ans << endl;
		cout << "---------------" << endl;
	}
	return 0;
}
