void main() {
	object oHk501 = GetObjectByTag("hk501", 0);
	AssignCommand(GetFirstPC(), ActionStartConversation(oHk501, "hk50", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

