// Prototypes
void sub2();
void sub1();

void sub2() {
	AssignCommand(GetPartyLeader(), ClearAllActions());
	AssignCommand(GetPartyLeader(), ActionJumpToObject(GetWaypointByTag("sp_mira"), 1));
	SetMinOneHP(GetPartyLeader(), 1);
	DelayCommand(1.0, AssignCommand(GetPartyLeader(), ActionStartConversation(GetPartyLeader(), "902mira", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

void sub1() {
	SwitchPlayerCharacter(7);
}

void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	if ((oPC != oEntering)) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if (IsAvailableCreature(7)) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		sub1();
		DelayCommand(0.3, sub2());
	}
}