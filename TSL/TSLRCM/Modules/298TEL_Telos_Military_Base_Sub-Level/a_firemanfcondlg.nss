void main() {
	object oMan_term = GetObjectByTag("man_term", 0);
	if (GetIsObjectValid(oMan_term)) {
		AssignCommand(oMan_term, ClearAllActions());
		AssignCommand(oMan_term, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}