void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	if ((!GetIsObjectValid(oBaoDur))) {
		return;
	}
	AddAvailableNPCByObject(1, oBaoDur);
	AddPartyMember(1, oBaoDur);
	AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "232bdur", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
