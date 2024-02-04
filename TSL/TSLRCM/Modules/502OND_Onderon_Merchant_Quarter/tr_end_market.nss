void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("502OND_End_First") != 2)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oVaklu_common = GetObjectByTag("vaklu_common", 0);
	DelayCommand(0.1, AssignCommand(oVaklu_common, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}