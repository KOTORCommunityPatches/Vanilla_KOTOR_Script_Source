void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() != oPC)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 34)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 34, 1);
	if (IsAvailableCreature(7)) {
		SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
		object object4 = SpawnAvailableNPC(7, GetLocation(GetWaypointByTag("sp_mira")));
		DelayCommand(2.0, AssignCommand(object4, ClearAllActions()));
		DelayCommand(2.0, AssignCommand(object4, ActionStartConversation(oPC, "901mira", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

