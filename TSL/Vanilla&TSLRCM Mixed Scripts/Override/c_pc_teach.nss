// Prototypes
int sub1(int intParam1);

int sub1(int intParam1) {
	return ((((((intParam1 == 4) || (intParam1 == 5)) || (intParam1 == 6)) || (intParam1 == 7)) || (intParam1 == 8)) || (intParam1 == 9));
}

int StartingConditional() {
	return ((sub1(GetClassByPosition(1, GetFirstPC())) || sub1(GetClassByPosition(2, GetFirstPC()))) || sub1(GetClassByPosition(3, GetFirstPC())));
	return 1;
}

