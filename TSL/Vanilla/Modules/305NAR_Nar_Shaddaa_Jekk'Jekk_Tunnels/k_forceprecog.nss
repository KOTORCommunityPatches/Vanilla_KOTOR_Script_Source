void main() {
	if (GetSpellAcquired(178, GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 31)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		AssignCommand(OBJECT_SELF, ClearAllActions());
		AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "305preco", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
