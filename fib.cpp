#include <iostream>

using namespace std;

int fib(int n) {
    switch (n) {
        case 0:
            return 0;
        case 1:
            return 1;
        default:
            return fib(n-2) + fib(n-1);
    }
}

int main() {

    cout << "Enter n" << endl;
    cout << ">> ";

    int n;
    cin >> n;

    int Fn = fib(n);

    cout << "Fn is " << Fn << endl;

}
