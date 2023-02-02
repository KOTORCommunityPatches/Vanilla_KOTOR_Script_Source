void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("202TEL_Batono") != 12)) {
		return;
	}
	AssignCommand(GetObjectByTag("202_Gren", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("202_Gren", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
