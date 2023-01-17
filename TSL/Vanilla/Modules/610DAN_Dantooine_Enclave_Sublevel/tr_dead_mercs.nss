void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		SetKeepStealthInDialog(1);
		AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "deadmerc", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

