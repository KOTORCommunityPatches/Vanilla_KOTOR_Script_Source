void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((GetGlobalNumber("503OND_Cap_Murder") != 7)) {
			return;
		}
		object oG_riiken = GetObjectByTag("g_riiken", 0);
		AssignCommand(oG_riiken, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

