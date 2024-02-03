void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetGlobalNumber("503OND_Cap_Murder") != 7)) {
			return;
		}
		object oDhagon = GetObjectByTag("dhagon", 0);
		if ((!GetIsObjectValid(oDhagon))) {
			return;
		}
		AssignCommand(oDhagon, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetGlobalNumber("503OND_Cap_Murder", 8);
	}
}

