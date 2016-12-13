function combi(int n, int r) {
    if (n == r) {
	return 1;
    }
    if (r == 0) {
	return 1;
    }
    return combi(n-1,r) + combi(n-1,r-1);
}
