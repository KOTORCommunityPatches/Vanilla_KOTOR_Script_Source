void main() {
	object oAtton = GetObjectByTag("atton", 0);
	SetLocalBoolean(oAtton, 38, 1);
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "203atton", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
