// Prototypes
void sub2();
void sub1();

void sub2() {
	StartNewModule("303NAR", "FROM_305NAR", "", "", "", "", "", "");
}

void sub1() {
	SwitchPlayerCharacter(0);
}

void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	if ((!IsAvailableCreature(0))) {
		AddAvailableNPCByTemplate(0, "p_atton");
	}
	DelayCommand(0.3, sub1());
	DelayCommand(2.0, sub2());
}
