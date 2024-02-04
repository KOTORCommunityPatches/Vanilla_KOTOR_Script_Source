void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("403DXN_Second_Visit") != 0)) {
		return;
	}
	if ((GetGlobalNumber("403DXN_Camp_Visited") == 0)) {
		object oG_mandalore = GetObjectByTag("g_mandalore", 0);
		SetGlobalNumber("403DXN_Camp_Visited", 1);
		AssignCommand(oG_mandalore, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}