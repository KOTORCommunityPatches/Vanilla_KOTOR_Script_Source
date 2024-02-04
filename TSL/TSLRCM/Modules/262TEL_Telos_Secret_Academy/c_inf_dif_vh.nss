// Prototypes
int sub1(int intParam1, int intParam2);

int sub1(int intParam1, int intParam2) {
	int int1 = GetInfluence(intParam1);
	int int3 = GetInfluence(intParam2);
	return (int1 - int3);
}

int StartingConditional() {
	if ((sub1(9, 4) >= 30)) {
		return 1;
	}
	else {
		return 0;
	}
}