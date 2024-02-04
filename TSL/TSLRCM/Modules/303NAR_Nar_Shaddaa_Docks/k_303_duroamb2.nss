void main() {
	if (((!GetLocalBoolean(OBJECT_SELF, 31)) && (GetIsConversationActive() == 0))) {
		ClearAllActions();
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		ActionStartConversation(GetPartyLeader(), "duroamb2", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
	else {
		ExecuteScript("k_def_heartbt01", OBJECT_SELF, 0xFFFFFFFF);
	}
}