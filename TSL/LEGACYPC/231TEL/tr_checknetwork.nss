void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((!GetGlobalBoolean("231TEL_Shield_Network"))) {
		AssignCommand(GetEnteringObject(), ActionJumpToObject(GetObjectByTag("wp_push_back", 0), 1));
		SetLocalBoolean(GetObjectByTag("BaoDur", 0), 36, 1);
		AssignCommand(GetObjectByTag("BaoDur", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("BaoDur", 0), ActionStartConversation(GetFirstPC(), "231bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

