// Prototypes
void sub3();
void sub2();
void sub1();

void sub3() {
	object oBodyItem = GetItemInSlot(1, GetObjectByTag("naked_fakpc", 0));
	DelayCommand(1.0, ActionResumeConversation());
}

void sub2() {
	SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
	object oNaked_fakpc = CreateObject(1, "naked_fakpc", Location(Vector(61.15574, 31.0488, 1.8), 0.0), 0);
	object oNak_fakbao = CreateObject(1, "nak_fakbao", Location(Vector(63.96233, 33.04424, 1.8), 0.0), 0);
	object oBodyItem = GetItemInSlot(1, GetFirstPC());
	if (GetIsObjectValid(oBodyItem)) {
		object object8 = CreateItemOnObject(GetTag(oBodyItem), oNaked_fakpc, 1, 0);
		AssignCommand(oNaked_fakpc, ActionEquipItem(object8, 1, 1));
	}
	object object10 = GetItemInSlot(1, GetObjectByTag("BaoDur", 0));
	if (GetIsObjectValid(object10)) {
		object object13 = CreateItemOnObject(GetTag(object10), oNak_fakbao, 1, 0);
		AssignCommand(oNak_fakbao, ActionEquipItem(object13, 1, 1));
	}
	SetGoodEvilValue(oNaked_fakpc, GetGoodEvilValue(GetFirstPC()));
	SetGoodEvilValue(oNak_fakbao, GetGoodEvilValue(GetObjectByTag("BaoDur", 0)));
	DuplicateHeadAppearance(oNaked_fakpc, GetFirstPC());
	DelayCommand(1.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(1.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	DelayCommand(2.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(2.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	DelayCommand(3.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(3.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	DelayCommand(4.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(8.5, AssignCommand(oNaked_fakpc, ClearAllActions()));
	DelayCommand(8.5, ChangeToStandardFaction(oNaked_fakpc, 5));
	DelayCommand(8.5, AssignCommand(oNak_fakbao, ClearAllActions()));
	DelayCommand(8.5, ChangeToStandardFaction(oNak_fakbao, 5));
	SetGlobalFadeOut(10.0, 1.0, 0.0, 0.0, 0.0);
}

void sub1() {
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionPlayAnimation(35, 1.0, 13.5));
	AssignCommand(GetObjectByTag("BaoDur", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("BaoDur", 0), ActionPlayAnimation(35, 1.0, 14.5));
	SetGlobalFadeOut(12.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(14.1, SetFadeUntilScript());
}

void main() {
	object oPC = GetFirstPC();
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	object oRemote = GetObjectByTag("remote", 0);
	ActionPauseConversation();
	location location1 = Location(Vector(61.15574, 31.0488, 1.8), 0.0);
	location location3 = Location(Vector(63.96233, 33.04424, 1.8), 0.0);
	AssignCommand(oPC, ActionJumpToLocation(location1));
	AssignCommand(oBaoDur, ActionJumpToLocation(location3));
	DelayCommand(0.1, AssignCommand(oPC, SetFacingPoint(GetPosition(oBaoDur))));
	DelayCommand(0.1, AssignCommand(oBaoDur, SetFacingPoint(GetPosition(oPC))));
	SetDialogPlaceableCamera(48);
	DelayCommand(1.0, sub1());
	DelayCommand(17.5, AssignCommand(oBaoDur, ActionJumpToObject(GetObjectByTag("visas_arrives_pc", 0), 1)));
	DelayCommand(17.5, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("visas_arrives_pc", 0), 1)));
	DelayCommand(18.0, sub2());
	DelayCommand(29.5, sub3());
}