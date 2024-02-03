void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oVictim = GetObjectByTag("Victim", 0);
	AssignCommand(oVictim, ActionStartConversation(oEntering, "hitman", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
}

