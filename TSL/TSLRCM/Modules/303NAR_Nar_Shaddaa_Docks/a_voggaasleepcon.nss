void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((!GetGlobalBoolean("303NAR_Vogga_Asleep"))) {
		return;
	}
	object oVogga = GetObjectByTag("Vogga", 0);
	AssignCommand(oVogga, ClearAllActions());
	AssignCommand(oVogga, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}