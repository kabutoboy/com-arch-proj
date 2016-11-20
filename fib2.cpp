#include <iostream>
#include <vector>

using namespace std;

int main() {
    printf("Enter n\n>> ");

    int n;
    cin >> n;

    vector<int> F(n+1); 

    F[0] = 0;
    F[1] = 1;

    for (int i = 2; i <= n; i++) {
	F[i] = F[i-1] + F[i-2];
    }

    printf("F[%d] = %d\n", n, F[n]);

}
