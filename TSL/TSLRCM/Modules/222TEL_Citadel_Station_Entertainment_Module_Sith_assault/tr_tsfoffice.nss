void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	SetLocalBoolean(GetObjectByTag("ond_door", 0), 36, 1);
	AssignCommand(GetObjectByTag("ond_door", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("ond_door", 0), ActionStartConversation(GetFirstPC(), "onddoor", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}