void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if (GetIsObjectValid(oHK50)) {
		AssignCommand(oHK50, ClearAllActions());
		AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50com2", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}