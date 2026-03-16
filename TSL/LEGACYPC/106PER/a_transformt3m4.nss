// Prototypes
void sub1();

void sub1() {
	SwitchPlayerCharacter(8);
	SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((GetGlobalBoolean("PER_TURNINTO_T3M4") && GetIsPC(oEntering))) {
		SetGlobalBoolean("PER_TURNINTO_T3M4", 0);
		DelayCommand(1.0, sub1());
	}
}

