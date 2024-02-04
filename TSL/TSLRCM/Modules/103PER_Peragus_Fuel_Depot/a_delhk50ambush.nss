// Prototypes
void sub1();

void sub1() {
	AurPostString("Switched to Player. Turning off T3m4", 5, 5, 5.0);
	object oT3M4 = GetObjectByTag("T3M4", 0);
	AssignCommand(oT3M4, ClearAllEffects());
	SwitchPlayerCharacter(0xFFFFFFFF);
	SetNPCSelectability(8, 0);
}

void main() {
	AssignCommand(GetFirstPC(), ClearAllEffects());
	sub1();
	AssignCommand(GetFirstPC(), ClearAllEffects());
	DelayCommand(1.0, StartNewModule("101PER", "WP_ADMCON", "", "", "", "", "", ""));
}