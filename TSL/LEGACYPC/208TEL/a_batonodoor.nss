void main() {
	object o203_batono = GetObjectByTag("203_batono", 0);
	if ((GetGlobalNumber("202TEL_Batono") == 0)) {
		SetLocalBoolean(o203_batono, 36, 1);
	}
	if ((GetGlobalNumber("202TEL_Batono") == 5)) {
		SetLocalBoolean(o203_batono, 37, 1);
	}
	AssignCommand(o203_batono, ClearAllActions());
	AssignCommand(o203_batono, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

