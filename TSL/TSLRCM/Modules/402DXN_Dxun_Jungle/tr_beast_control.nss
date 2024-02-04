void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 50, 1);
	ActionStartConversation(GetFirstPC(), "beast_co", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}