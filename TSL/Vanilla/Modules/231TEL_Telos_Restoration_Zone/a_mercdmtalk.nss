void main() {
	string string1;
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object o231_mercdm = GetObjectByTag("231_mercdm", 0);
	if ((!GetIsObjectValid(o231_mercdm))) {
		return;
	}
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("WP_MERCDM_TALK", 0), 1));
	object oAtton = GetObjectByTag("Atton", 0);
	if (GetIsObjectValid(oAtton)) {
		AssignCommand(oAtton, ActionJumpToObject(GetWaypointByTag("WP_MERCDM_TALK"), 1));
	}
	DelayCommand(0.1, AssignCommand(o231_mercdm, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
