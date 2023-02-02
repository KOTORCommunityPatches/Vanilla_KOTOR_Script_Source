void main() {
	int nGlobal = GetGlobalNumber("401DXN_Circle_Scene");
	if ((nGlobal == 0)) {
		SetGlobalNumber("401DXN_Circle_Scene", 1);
		object oWP_CIRCLECS_5 = GetObjectByTag("WP_CIRCLECS_2", 0);
		oWP_CIRCLECS_5 = GetObjectByTag("WP_CIRCLECS_5", 0);
		CreateObject(1, "c_maalraas_cs", GetLocation(oWP_CIRCLECS_5), 0);
		object oCircleCutsceneDlg = GetObjectByTag("CircleCutsceneDlg", 0);
		if ((!GetIsObjectValid(oCircleCutsceneDlg))) {
			return;
		}
		DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionStartConversation(oCircleCutsceneDlg, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
