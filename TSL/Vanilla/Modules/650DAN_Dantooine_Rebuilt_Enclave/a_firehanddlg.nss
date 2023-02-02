void main() {
	object oDanCourt = GetObjectByTag("DanCourt", 0);
	ClearAllActions();
	AssignCommand(oDanCourt, ActionStartConversation(GetPCSpeaker(), "krehand1", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
