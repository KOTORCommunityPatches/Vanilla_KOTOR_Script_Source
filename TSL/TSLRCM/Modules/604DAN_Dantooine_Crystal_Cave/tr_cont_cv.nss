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
	if (((GetSpellAcquired(178, oEntering) && (GetJournalEntry("ssensor") > 0)) && GetIsObjectValid(GetObjectByTag("cont_sensor", 0)))) {
		AssignCommand(oEntering, ActionStartConversation(OBJECT_SELF, "cont_cv", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}