void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((GetGlobalNumber("402DXN_ScoutHunt") == 0) || (GetGlobalNumber("402DXN_SecondScout") == 1))) {
		return;
	}
	object oOm_2scout1 = GetObjectByTag("om_2scout1", 0);
	if ((!GetIsObjectValid(oOm_2scout1))) {
		return;
	}
	AssignCommand(oOm_2scout1, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetGlobalNumber("402DXN_SecondScout", 1);
	SetGlobalNumber("402DXN_ScoutHunt", (GetGlobalNumber("402DXN_ScoutHunt") + 1));
}

