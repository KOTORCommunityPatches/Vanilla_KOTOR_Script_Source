void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if (GetIsObjectValid(GetObjectByTag("Mand", 0))) {
			object oMand = GetObjectByTag("Mand", 0);
			AssignCommand(oMand, ClearAllActions());
			AssignCommand(oEntering, ClearAllActions());
			AssignCommand(oMand, ActionStartConversation(GetFirstPC(), "222mand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

