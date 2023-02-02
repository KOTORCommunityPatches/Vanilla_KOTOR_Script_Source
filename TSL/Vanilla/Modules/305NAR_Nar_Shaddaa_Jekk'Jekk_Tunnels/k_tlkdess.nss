void main() {
	object oDessicus = GetObjectByTag("Dessicus", 0);
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	ClearAllActions();
	AssignCommand(oDessicus, ActionStartConversation(GetFirstPC(), "Dessicus", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
