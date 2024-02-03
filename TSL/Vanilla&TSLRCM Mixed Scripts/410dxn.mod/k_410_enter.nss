// Prototypes
void sub4();
void sub3();
void sub2();
void sub1();

void sub4() {
	object oTo_403 = GetObjectByTag("To_403", 0);
	if ((!GetLocalBoolean(oTo_403, 50))) {
		if ((GetIsObjectValid(GetObjectByTag("xarga", 0)) && GetIsObjectValid(GetFirstPC()))) {
			AssignCommand(GetObjectByTag("xarga", 0), ClearAllActions());
			DelayCommand(0.1, AssignCommand(GetObjectByTag("xarga", 0), ActionStartConversation(GetFirstPC(), "xarga", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			SetLocalBoolean(oTo_403, 50, 1);
		}
	}
}

void sub3() {
	object object1 = SpawnAvailableNPC(GetGlobalNumber("403DXN_PARTY2_NPC2"), GetLocation(GetObjectByTag("sp_cnpc2", 0)));
	object object4 = SpawnAvailableNPC(GetGlobalNumber("403DXN_PARTY2_NPC3"), GetLocation(GetObjectByTag("sp_cnpc3", 0)));
	AddPartyMember(GetGlobalNumber("403DXN_PARTY2_NPC2"), object1);
	AddPartyMember(GetGlobalNumber("403DXN_PARTY2_NPC3"), object4);
	if ((GetGlobalNumber("403DXN_PARTY2_NPC1") == 1)) {
		CreateObject(1, "p_remote_dxn", GetLocation(GetObjectByTag("sp_cnpc2", 0)), 0);
	}
}

void sub2() {
	SwitchPlayerCharacter(GetGlobalNumber("403DXN_PARTY2_NPC1"));
	SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
}

void sub1() {
	while ((GetPartyMemberCount() > 1)) {
		{
			int int2 = 0;
			while ((int2 <= 12)) {
			if (IsNPCPartyMember(int2)) {
				RemovePartyMember(int2);
			}
				(int2++);
			}
		}
	}
}

void main() {
	object oTo_403 = GetObjectByTag("To_403", 0);
	object oEntering = GetEnteringObject();
	if ((GetIsPC(oEntering) && (!GetLocalBoolean(oTo_403, 55)))) {
		SetGlobalNumber("410DXN_Begin", 1);
		SetLocalBoolean(oTo_403, 55, 1);
		sub1();
		DelayCommand(0.1, sub2());
		DelayCommand(0.2, sub3());
		DelayCommand(3.0, sub4());
	}
}

