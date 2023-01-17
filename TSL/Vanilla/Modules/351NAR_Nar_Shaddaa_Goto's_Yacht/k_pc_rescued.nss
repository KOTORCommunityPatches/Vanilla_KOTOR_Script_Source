// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void sub2() {
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	sub3();
	object object1 = SpawnAvailableNPC(GetGlobalNumber("351NAR_Party1"), GetLocation(GetObjectByTag("wp_party1", 0)));
	AddPartyMember(GetGlobalNumber("351NAR_Party1"), object1);
	object1 = SpawnAvailableNPC(GetGlobalNumber("351NAR_Party2"), GetLocation(GetObjectByTag("wp_party2", 0)));
	AddPartyMember(GetGlobalNumber("351NAR_Party2"), object1);
	object oAudienceDoor = GetObjectByTag("AudienceDoor", 0);
	SetLocked(oAudienceDoor, 0);
	DelayCommand(0.5, AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_pc_rescue", 0), 1)));
	DelayCommand(2.0, AssignCommand(oAudienceDoor, ActionOpenDoor(oAudienceDoor)));
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_pc_rescue2", 0), 0, 1.0)));
	AssignCommand(GetFirstPC(), ActionStartConversation(oAudienceDoor, "rescuecs", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub1() {
	object oAudienceDoor = GetObjectByTag("AudienceDoor", 0);
	SwitchPlayerCharacter((-1));
}

void main() {
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1());
	DelayCommand(1.5, sub2());
}

