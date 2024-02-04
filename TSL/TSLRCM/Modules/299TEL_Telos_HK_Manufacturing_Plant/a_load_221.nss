// Prototypes
void sub1();

void sub1() {
	RemoveAvailableNPC(5);
	SwitchPlayerCharacter(0xFFFFFFFF);
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.8, sub1());
	SetFadeUntilScript();
	DelayCommand(1.0, PlayMovie("MalMov01b", 0));
	DelayCommand(1.0, StartNewModule("221TEL", "", "", "", "", "", "", ""));
}