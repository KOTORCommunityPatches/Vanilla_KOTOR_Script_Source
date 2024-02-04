void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object o231_D_SentryC = GetObjectByTag("231_D_SentryC", 0);
	if ((!GetIsObjectValid(o231_D_SentryC))) {
		return;
	}
	AssignCommand(o231_D_SentryC, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}