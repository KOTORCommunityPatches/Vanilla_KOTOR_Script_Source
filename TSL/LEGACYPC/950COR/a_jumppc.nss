void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		object oPC = GetFirstPC();
		int nGlobal = GetGlobalNumber("G_PC_Align_Val");
		int int5 = (nGlobal - 50);
		SetGlobalNumber("950COR_PLAYER_ALIGN", int5);
		AdjustAlignment(oPC, 1, 100, 1);
		SetLockOrientationInDialog(GetFirstPC(), 1);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("WP_HOLO_START", 0))));
	}
	if ((nParam1 == 1)) {
		object object7 = GetFirstPC();
		int int6 = GetGlobalNumber("950COR_PLAYER_ALIGN");
		AdjustAlignment(object7, 2, int6, 1);
		SetLockOrientationInDialog(GetFirstPC(), 0);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("FROM_262TEL", 0))));
	}
}

