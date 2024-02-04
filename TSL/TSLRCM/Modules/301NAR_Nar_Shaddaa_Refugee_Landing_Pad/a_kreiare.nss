// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(Location(Vector((-86.6069), 24.74825, 9.66545), (-1.41994))));
	DelayCommand(0.1, AssignCommand(objectParam1, ActionMoveToLocation(Location(Vector((-81.6069), 24.74825, 9.66545), (-1.41994)), 0)));
	DelayCommand(3.5, AssignCommand(objectParam1, ClearAllActions()));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	NoClicksFor(2.0);
	object oPC = GetFirstPC();
	object oKreia = GetObjectByTag("Kreia", 0);
	sub1(GetObjectByTag("Atton", 0));
	sub1(GetObjectByTag("VisasMarr", 0));
	sub1(GetObjectByTag("Handmaiden", 0));
	sub1(GetObjectByTag("T3M4", 0));
	sub1(GetObjectByTag("HK47", 0));
	sub1(GetObjectByTag("BaoDur", 0));
	sub1(GetObjectByTag("Disciple", 0));
	sub1(GetObjectByTag("Mand", 0));
	ActionPauseConversation();
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(oKreia, ActionJumpToLocation(Location(Vector((-84.06475), 28.85509, 9.66545), 0.02116)));
	AssignCommand(oPC, ActionJumpToLocation(Location(Vector((-82.27575), 26.33126, 9.66545), (-0.00461))));
	DelayCommand(0.5, AssignCommand(oPC, ActionForceMoveToLocation(Location(Vector((-62.20949), 26.23347, (-0.01133)), 180.0), 0, 30.0)));
	DelayCommand(2.4, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(2.45, SetLockOrientationInDialog(oPC, 1));
	DelayCommand(2.5, ActionResumeConversation());
	DelayCommand(4.0, AssignCommand(oPC, SetFacing((-210.0))));
}