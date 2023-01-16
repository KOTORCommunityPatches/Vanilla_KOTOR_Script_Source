void main() {
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if ((GetEnteringObject() == GetObjectByTag("C6E3", 0))) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		object oC6E3 = GetObjectByTag("C6E3", 0);
		SetLocalBoolean(oC6E3, 33, 1);
		AssignCommand(oC6E3, ClearAllActions());
		AssignCommand(oC6E3, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

