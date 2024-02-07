void main() {
	if ((!GetLocalBoolean(OBJECT_SELF, 30))) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetObjectByTag("Atton", 0))) {
		SetLocalBoolean(OBJECT_SELF, 30, 0);
		SetLocalBoolean(GetObjectByTag("Atton", 0), 31, 1);
		AssignCommand(GetObjectByTag("Atton", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("Atton", 0), ActionStartConversation(GetFirstPC(), "203atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

