void main() {
	object oHK47 = GetObjectByTag("HK47", 0);
	AssignCommand(oHK47, ClearAllActions());
	AssignCommand(oHK47, ActionStartConversation(oHK47, "hk47hk", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}