void main() {
	object oTO102PER = GetObjectByTag("TO102PER", 0);
	object oHK50 = GetObjectByTag("HK50", 0);
	AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

