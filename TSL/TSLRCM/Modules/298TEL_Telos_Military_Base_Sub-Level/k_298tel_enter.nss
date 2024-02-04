// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	object oHK50 = GetObjectByTag("HK50", 0);
	SetLockOrientationInDialog(oHK50, 1);
	AssignCommand(oHK50, ClearAllActions());
	AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub2() {
	if ((!IsAvailableCreature(5))) {
		AddAvailableNPCByTemplate(5, "p_hk47");
	}
	SwitchPlayerCharacter(5);
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
}

void sub1() {
	while ((GetPartyMemberCount() > 1)) {
		{
			int int2 = 0;
			while ((int2 <= 12)) {
			if (IsNPCPartyMember(int2)) {
				RemoveNPCFromPartyToBase(int2);
			}
				(int2++);
			}
		}
	}
}

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
		sub1();
		sub2();
		SwitchPlayerCharacter(5);
		DelayCommand(0.1, sub3());
	}
}