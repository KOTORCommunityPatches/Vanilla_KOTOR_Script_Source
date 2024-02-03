void main() {
	object oPC = GetFirstPC();
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	AssignCommand(GetFirstPC(), ActionStartConversation(OBJECT_SELF, "p1dkcut", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

