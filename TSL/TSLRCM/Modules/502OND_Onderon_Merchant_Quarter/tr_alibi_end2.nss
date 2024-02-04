void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("503OND_Cap_Murder") != 7)) {
		return;
	}
	object oDhagon = GetObjectByTag("dhagon", 0);
	AssignCommand(oDhagon, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetGlobalNumber("503OND_Cap_Murder", 8);
}