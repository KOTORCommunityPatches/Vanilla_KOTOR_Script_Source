// Byte code does not match

// Prototypes
void sub1();

void sub1() {
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	SetForfeitConditions(0);
	NoClicksFor(1.0);
	AssignCommand(oVisasMarr, SurrenderToEnemies());
	ChangeToStandardFaction(oVisasMarr, 5);
	ChangeToStandardFaction(oKreia, 2);
	AssignCommand(oVisasMarr, ClearAllActions());
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ClearAllEffects());
	CancelCombat(oVisasMarr);
	CancelCombat(oPC);
	AssignCommand(oKreia, ActionStartConversation(oPC, "vissparrpc", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void main() {
	int int1 = GetRunScriptVar();
	switch (int1) {
		case 1:
			sub1();
			break;
			sub1();
			break;
			sub1();
			break;
		case 2:
		case 4:
		case 8:
		case 16:
		case 32:
		case 64:
		case 128:
		case 200:
		case 201:
	}
}