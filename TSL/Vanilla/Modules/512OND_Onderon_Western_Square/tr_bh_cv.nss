void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
		return;
	}
	if (GetSpellAcquired(178, oEntering)) {
		AssignCommand(oEntering, ActionStartConversation(OBJECT_SELF, "bhcv", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}
