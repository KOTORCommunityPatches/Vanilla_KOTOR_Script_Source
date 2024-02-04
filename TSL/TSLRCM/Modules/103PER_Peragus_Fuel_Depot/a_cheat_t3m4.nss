// Prototypes
void sub1();

void sub1() {
	if ((!IsAvailableCreature(8))) {
		AddAvailableNPCByTemplate(8, "p_t3m4");
	}
	SwitchPlayerCharacter(8);
}

void main() {
	DelayCommand(1.0, sub1());
}