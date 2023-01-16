void main() {
	string string1;
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object o231_mercc = GetObjectByTag("231_mercc", 0);
	if ((!GetIsObjectValid(o231_mercc))) {
		return;
	}
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("WP_MERCC_TALK", 0), 1));
	object oAtton = GetObjectByTag("Atton", 0);
	if (GetIsObjectValid(oAtton)) {
		AssignCommand(oAtton, ActionMoveToObject(GetWaypointByTag("WP_MERCC_TALK"), 0, 1.0));
	}
	DelayCommand(0.1, AssignCommand(o231_mercc, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

