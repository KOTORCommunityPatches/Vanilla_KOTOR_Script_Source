// Prototypes
int sub1(int intParam1);

int sub1(int intParam1) {
	return (((intParam1 == 3) || (intParam1 == 4)) || (intParam1 == 5));
}

int StartingConditional() {
	object oLeader = GetPartyLeader();
	return ((sub1(GetClassByPosition(1, oLeader)) || sub1(GetClassByPosition(2, oLeader))) || sub1(GetClassByPosition(3, oLeader)));
	return 1;
}