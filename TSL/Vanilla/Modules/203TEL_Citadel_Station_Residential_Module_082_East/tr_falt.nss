void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("202TEL_Falt") == 5)) {
		object o202_Falt = GetObjectByTag("202_Falt", 0);
		AssignCommand(o202_Falt, ClearAllActions());
		AssignCommand(o202_Falt, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
