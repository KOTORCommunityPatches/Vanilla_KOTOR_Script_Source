// Prototypes
void sub6();
void sub5();
void sub4();
void sub3();
void sub2();
void sub1();

void sub6() {
	int int1 = 2;
	ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Atton", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("g0t0", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Mand", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("hk47", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Mira", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Hanharr", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Disciple", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Remote", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("T3M4", 0), int1);
}

void sub5() {
	SetMinOneHP(GetObjectByTag("VisasMarr", 0), 0);
	AssignCommand(GetObjectByTag("Kreia", 0), ActionJumpToObject(GetWaypointByTag("mn_portdorm"), 1));
}

void sub4() {
	object oLWeapItem = GetItemInSlot(5, GetFirstPC());
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	if (GetIsObjectValid(oLWeapItem)) {
		AssignCommand(GetFirstPC(), ActionUnequipItem(oLWeapItem, 0));
	}
	if (GetIsObjectValid(oRWeapItem)) {
		AssignCommand(GetFirstPC(), ActionUnequipItem(oRWeapItem, 0));
	}
}

void sub3() {
	int int1 = 0;
	int nItemType;
	object oInvItem = GetFirstItemInInventory(GetFirstPC());
	while (GetIsObjectValid(oInvItem)) {
		nItemType = GetBaseItemType(oInvItem);
		if (((nItemType == 8) || (nItemType == 10))) {
			int1 = 1;
			break;
		}
		oInvItem = GetNextItemInInventory(GetFirstPC());
	}
	AssignCommand(GetFirstPC(), ActionEquipItem(oInvItem, 5, 0));
}

void sub2() {
	int int1 = 5;
	ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Atton", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("g0t0", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Mand", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("hk47", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Mira", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Hanharr", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Disciple", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("Remote", 0), int1);
	ChangeToStandardFaction(GetObjectByTag("T3M4", 0), int1);
}

void sub1() {
	ChangeToStandardFaction(GetObjectByTag("Kreia", 0), 5);
	ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), 1);
}

void main() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oPC = GetFirstPC();
	object oKreia = GetObjectByTag("Kreia", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			DelayCommand(2.0, ActionResumeConversation());
			break;
		case 1:
			ActionPauseConversation();
			AssignCommand(oKreia, ActionPlayAnimation(10563, 0.0, 1.5));
			DelayCommand(2.0, ActionResumeConversation());
			break;
		case 2:
			SetGlobalNumber("003_Visas_Training", 1);
			SetForfeitConditions(((1 | 2) | 4));
			object oLWeapItem = GetItemInSlot(5, oPC);
			if (GetIsObjectValid(oLWeapItem)) {
				AssignCommand(oPC, ActionUnequipItem(oLWeapItem, 0));
			}
			SetMinOneHP(oVisasMarr, 1);
			sub1();
			sub2();
			break;
		case 3:
			ApplyEffectToObject(0, EffectHeal(200), oVisasMarr, 0.0);
			0.0;
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
	}
}

