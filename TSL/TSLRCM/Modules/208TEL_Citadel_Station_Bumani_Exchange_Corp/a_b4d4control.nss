// Prototypes
void sub1();

void sub1() {
	RemovePartyMember(0);
	RemovePartyMember(1);
	RemovePartyMember(2);
	RemovePartyMember(11);
	RemovePartyMember(3);
	RemovePartyMember(4);
	RemovePartyMember(10);
	RemovePartyMember(5);
	RemovePartyMember(6);
	RemovePartyMember(7);
	RemovePartyMember(8);
	RemovePartyMember(9);
	object o203_b4d4 = GetObjectByTag("203_b4d4", 0);
	AddAvailableNPCByObject(1, o203_b4d4);
	SwitchPlayerCharacter(1);
	DestroyObject(o203_b4d4, 0.0, 1, 0.0, 0);
}

void main() {
	SetGlobalNumber("203TEL_B-4D4_PC", 1);
	SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1());
	DelayCommand(1.0, AssignCommand(GetObjectByTag("203_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}