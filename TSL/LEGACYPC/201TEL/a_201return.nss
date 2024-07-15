void main() {
	if (((!GetLocalBoolean(OBJECT_SELF, 30)) && IsNPCPartyMember(1))) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object o201_ith_bay = GetObjectByTag("201_ith_bay", 0);
		if (GetIsObjectValid(o201_ith_bay)) {
			AssignCommand(o201_ith_bay, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

