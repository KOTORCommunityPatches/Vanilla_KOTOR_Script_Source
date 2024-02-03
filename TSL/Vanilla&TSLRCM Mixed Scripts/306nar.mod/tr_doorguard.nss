void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	{
		object oDoorGuard = GetObjectByTag("DoorGuard", 0);
		if ((!GetLocalBoolean(oDoorGuard, 40))) {
			AssignCommand(oDoorGuard, ActionStartConversation(oEntering, "doorgrd", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
		if (GetLocalBoolean(oDoorGuard, 49)) {
			AssignCommand(oDoorGuard, BarkString(oDoorGuard, 133977));
		}
		else {
			SetLocalBoolean(oDoorGuard, 48, 1);
		}
		}
	}
}

