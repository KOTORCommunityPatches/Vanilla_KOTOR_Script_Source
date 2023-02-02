void main() {
	object o203_Lorso = GetObjectByTag("203_Lorso", 0);
	if (GetIsObjectValid(o203_Lorso)) {
		AssignCommand(o203_Lorso, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
