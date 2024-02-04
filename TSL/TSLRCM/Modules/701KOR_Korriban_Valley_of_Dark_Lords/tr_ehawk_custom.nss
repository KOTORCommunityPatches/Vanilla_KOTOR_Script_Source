// Prototypes
void sub1();

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		int int1 = 6;
		int int2 = 6;
		SetGlobalNumber("003EBO_BACKGROUND", int1);
		SetGlobalNumber("003EBO_RETURN_DEST", int2);
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(1.0, sub1());
		DelayCommand(2.0, StartNewModule("003EBO", "WP_from_outside", "", "", "", "", "", ""));
	}
}