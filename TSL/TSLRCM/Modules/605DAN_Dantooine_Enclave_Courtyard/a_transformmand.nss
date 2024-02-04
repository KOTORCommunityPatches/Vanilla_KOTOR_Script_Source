// Prototypes
void sub2();
void sub1();

void sub2() {
	object oMand = GetObjectByTag("Mand", 0);
	AddAvailableNPCByObject(1, oMand);
	SwitchPlayerCharacter(2);
}

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemovePartyMember(int2);
		}
		(int2++);
	}
}

void main() {
	object oMand_lead = GetObjectByTag("mand_lead", 0);
	sub1();
	object oFake_pc605 = CreateObject(1, "fake_pc605", Location(Vector(311.69995, 106.55496, 1.9405), 90.0), 0);
	SetGoodEvilValue(oFake_pc605, GetGoodEvilValue(GetFirstPC()));
	DuplicateHeadAppearance(oFake_pc605, GetFirstPC());
	object oBodyItem = GetItemInSlot(1, GetFirstPC());
	if (GetIsObjectValid(oBodyItem)) {
		GiveItem(oBodyItem, oFake_pc605);
		AssignCommand(oFake_pc605, ActionEquipItem(oBodyItem, 1, 1));
	}
	object oHeadItem = GetItemInSlot(0, GetFirstPC());
	if (GetIsObjectValid(oHeadItem)) {
		GiveItem(oHeadItem, oFake_pc605);
		AssignCommand(oFake_pc605, ActionEquipItem(oHeadItem, 0, 1));
	}
	DelayCommand(0.3, sub2());
	DelayCommand(0.8, AssignCommand(oMand_lead, ClearAllActions()));
	DelayCommand(0.8, AssignCommand(oMand_lead, ActionStartConversation(GetFirstPC(), "605lead", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}