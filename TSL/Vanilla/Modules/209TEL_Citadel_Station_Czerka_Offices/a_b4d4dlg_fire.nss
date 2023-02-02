void main() {
	object o203_B4D4 = GetObjectByTag("203_B4D4", 0);
	if (GetIsObjectValid(o203_B4D4)) {
		SetGlobalNumber("203TEL_Czerka_Call", 1);
		AssignCommand(o203_B4D4, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
