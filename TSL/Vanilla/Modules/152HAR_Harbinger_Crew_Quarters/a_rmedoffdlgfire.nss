void main() {
	object oRMedOff = GetObjectByTag("RMedOff", 0);
	if (GetIsObjectValid(oRMedOff)) {
		AssignCommand(oRMedOff, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
