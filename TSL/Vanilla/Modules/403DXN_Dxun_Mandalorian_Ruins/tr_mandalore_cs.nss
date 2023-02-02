void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("403DXN_Camp_Visited") == 0)) {
		AssignCommand(GetObjectByTag("MEETMANDALOREPH", 0), ActionStartConversation(oEntering, "meetm_cs", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
