// Prototypes
void sub1();

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	object o233_mercc = GetObjectByTag("233_mercc", 0);
	object oPC = GetFirstPC();
	object object5 = GetNextPC();
	object object7 = GetNextPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	AssignCommand(object7, ClearAllActions());
	AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_MERCC_TALK", 0), 1));
	AssignCommand(object5, ActionJumpToObject(GetObjectByTag("WP_MERCC_TALK", 0), 1));
	AssignCommand(object7, ActionJumpToObject(GetObjectByTag("WP_MERCC_TALK", 0), 1));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(o233_mercc, ClearAllActions());
	DelayCommand(0.1, AssignCommand(o233_mercc, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		AurPostString("Entering Thing", 5, 15, 10.0);
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			AurPostString("Return 1", 5, 16, 10.0);
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object o233_mercc = GetObjectByTag("233_mercc", 0);
		if ((!GetIsObjectValid(o233_mercc))) {
			AurPostString("Return 2", 5, 17, 10.0);
			return;
		}
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(1.0, sub1());
	}
}
