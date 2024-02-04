void main() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetGlobalBoolean("208TEL_Vula_Dead", 1);
	AssignCommand(GetObjectByTag("Vula", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("Vula", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}