// Prototypes
void sub1();

void sub1() {
	RemoveAvailableNPC(8);
	SwitchPlayerCharacter(0xFFFFFFFF);
	SetGlobalBoolean("PER_TURNINTO_T3M4", 0);
	SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
}

void main() {
	if (GetGlobalBoolean("PER_ITURNINTO_T3M4")) {
		DelayCommand(1.0, sub1());
	}
}
