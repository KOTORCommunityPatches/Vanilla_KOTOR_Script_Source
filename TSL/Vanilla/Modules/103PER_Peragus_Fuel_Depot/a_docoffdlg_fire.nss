void main() {
	object oDockOff = GetObjectByTag("DockOff", 0);
	if (GetIsObjectValid(oDockOff)) {
		AssignCommand(oDockOff, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
