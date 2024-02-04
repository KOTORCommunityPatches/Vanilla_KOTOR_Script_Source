void main() {
	object oDrdplay = GetObjectByTag("drdplay", 0);
	AssignCommand(oDrdplay, ClearAllActions());
	AssignCommand(oDrdplay, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}