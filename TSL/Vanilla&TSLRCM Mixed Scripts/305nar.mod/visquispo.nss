// Prototypes
void sub1();

void sub1() {
	object oAtton = GetObjectByTag("Atton", 0);
	object oMira = GetObjectByTag("Mira", 0);
	AssignCommand(oMira, ActionStartConversation(GetFirstPC(), "attenter", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void main() {
	SwitchPlayerCharacter(0);
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("WP_VISQUIS_PC_JUMP", 0), 1)));
	DelayCommand(0.2, sub1());
}

