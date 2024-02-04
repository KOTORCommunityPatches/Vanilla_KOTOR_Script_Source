void main() {
	int nGlobal = GetGlobalNumber("203TEL_B-4D4_PC");
	if ((nGlobal == 1)) {
		if (GetLocalBoolean(OBJECT_SELF, 40)) {
			return;
		}
		else {
			AssignCommand(GetObjectByTag("203_t1n1", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("203_t1n1", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetLocalBoolean(OBJECT_SELF, 40, 1);
		}
	}
	else {
		return;
	}
}