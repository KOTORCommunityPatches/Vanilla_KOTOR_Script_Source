// Prototypes
void sub2();
void sub1();

void sub2() {
	object oNPC;
	object object2;
	int int1 = 1;
	while ((int1 < 4)) {
		{
			string string1 = ("WP_party_" + IntToString(int1));
			object2 = GetObjectByTag(string1, 0);
			oNPC = GetPartyMemberByIndex((int1 - 1));
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(object2)));
		}
		(int1++);
	}
}

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetSoloMode(0);
	SetPartyLeader(0xFFFFFFFF);
	sub1();
	SetNPCSelectability(9, 0);
	object oVisasmarr = GetObjectByTag("visasmarr", 0);
	if (GetIsObjectValid(oVisasmarr)) {
		DestroyObject(oVisasmarr, 0.0, 0, 0.0, 0);
	}
	sub2();
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, ShowPartySelectionGUI("", 9, 0xFFFFFFFF, 0));
}