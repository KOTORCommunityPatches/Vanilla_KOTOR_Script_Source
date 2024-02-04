void main() {
	object oSecTer = GetObjectByTag("SecTer", 0);
	if (GetIsObjectValid(oSecTer)) {
		AssignCommand(oSecTer, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}