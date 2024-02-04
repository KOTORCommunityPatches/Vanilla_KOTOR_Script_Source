// Prototypes
void sub1();

void sub1() {
	StartNewModule("305NAR", "WP_VISQUIS_PC_JUMP", "", "", "", "", "", "");
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	int int1 = 0;
	int1 = 0;
	while ((int1 < 12)) {
		if (IsNPCPartyMember(int1)) {
			RemoveNPCFromPartyToBase(int1);
		}
		(int1++);
	}
	AssignCommand(oEntering, ClearAllActions());
	DelayCommand(0.5, sub1());
}