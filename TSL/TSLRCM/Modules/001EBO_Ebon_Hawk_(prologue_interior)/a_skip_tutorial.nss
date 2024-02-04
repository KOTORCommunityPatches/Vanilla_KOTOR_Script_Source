void main() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		ActionStartConversation(GetFirstPC(), "intro", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
}