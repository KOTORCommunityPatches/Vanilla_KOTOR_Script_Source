void main() {
	object oDahnis = GetObjectByTag("dahnis", 0);
	AssignCommand(oDahnis, ClearAllActions());
	AssignCommand(oDahnis, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
