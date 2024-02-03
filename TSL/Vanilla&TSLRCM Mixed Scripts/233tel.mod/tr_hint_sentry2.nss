void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((IsNPCPartyMember(1) == 1)) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetGlobalNumber("231TEL_Atton", 6);
		object oBaoDur = GetObjectByTag("BaoDur", 0);
		AssignCommand(oBaoDur, ClearAllActions());
		AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "233bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
}

