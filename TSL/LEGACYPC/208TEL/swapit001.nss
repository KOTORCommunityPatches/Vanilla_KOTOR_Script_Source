// Prototypes
void sub1();

void sub1() {
	SwitchPlayerCharacter(0xFFFFFFFF);
}

void main() {
	SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1());
}

