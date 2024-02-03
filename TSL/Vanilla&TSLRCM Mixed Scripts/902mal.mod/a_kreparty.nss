// Prototypes
void sub1();

void sub1() {
	RemoveAvailableNPC(12);
	SwitchPlayerCharacter(0xFFFFFFFF);
}

void main() {
	SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(0.8, sub1());
	DelayCommand(0.8, SetFadeUntilScript());
	DelayCommand(2.1, StartNewModule("907MAL", "", "", "", "", "", "", ""));
}

