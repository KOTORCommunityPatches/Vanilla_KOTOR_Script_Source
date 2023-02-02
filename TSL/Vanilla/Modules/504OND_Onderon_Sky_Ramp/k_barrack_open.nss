void main() {
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		return;
	}
	object oRepsold = GetObjectByTag("bostuco", 0);
	AssignCommand(oRepsold, ClearAllActions());
	AssignCommand(oRepsold, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_barr_bost", 0))));
	SetLocalBoolean(oRepsold, 40, 1);
	oRepsold = GetObjectByTag("repsold", 0);
	DelayCommand(0.1, AssignCommand(oRepsold, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
