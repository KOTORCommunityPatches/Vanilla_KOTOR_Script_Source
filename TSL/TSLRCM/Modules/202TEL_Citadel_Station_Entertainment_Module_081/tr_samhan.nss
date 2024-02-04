void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if ((GetGlobalNumber("200TEL_Smuggling") == 10)) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		object oSamhan = GetObjectByTag("Samhan", 0);
		SetLocalBoolean(oSamhan, 41, 1);
		AssignCommand(oSamhan, ClearAllActions());
		AssignCommand(oSamhan, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}