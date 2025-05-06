// Prototypes
void sub1();

void sub1() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	object oWP_player_speech = GetObjectByTag("WP_player_speech", 0);
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(oWP_player_speech)));
	object oGuardRoomDr = GetObjectByTag("GuardRoomDr", 0);
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, AssignCommand(oGuardRoomDr, ClearAllActions()));
	DelayCommand(0.1, AssignCommand(oGuardRoomDr, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
		if ((nGlobal > 0)) {
			return;
		}
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(1.0, sub1());
	}
}

