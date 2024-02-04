// Prototypes
void sub2();
void sub1();

void sub2() {
	DelayCommand(0.2, AssignCommand(GetPartyLeader(), ClearAllActions()));
	DelayCommand(0.2, AssignCommand(GetPartyLeader(), ActionJumpToObject(GetWaypointByTag("sp_mira"), 1)));
	SetMinOneHP(GetPartyLeader(), 1);
	DelayCommand(0.5, AssignCommand(GetPartyLeader(), ActionStartConversation(GetPartyLeader(), "902mira", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

void sub1() {
	SwitchPlayerCharacter(7);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(3.5, sub1());
			DelayCommand(3.8, sub2());
			break;
	}
}