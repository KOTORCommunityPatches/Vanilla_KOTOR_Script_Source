void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		object oDisciple = GetObjectByTag("Disciple", 0);
		if ((!GetIsObjectValid(oDisciple))) {
			return;
		}
		AssignCommand(oDisciple, ClearAllActions());
		AssignCommand(oDisciple, ActionStartConversation(GetFirstPC(), "disc_enc", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
