void main() {
	object oNavcomI = GetObjectByTag("NavcomI", 0);
	if (GetIsObjectValid(oNavcomI)) {
		AssignCommand(oNavcomI, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}