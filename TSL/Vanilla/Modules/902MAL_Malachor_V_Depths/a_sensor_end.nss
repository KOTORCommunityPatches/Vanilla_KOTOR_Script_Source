void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(0.5, SetFadeUntilScript());
			DelayCommand(2.1, PlayMovie("MalMov09", 0));
			DelayCommand(2.1, StartNewModule("903MAL", "From_902MAL", "", "", "", "", "", ""));
			break;
		case 1:
			AssignCommand(GetObjectByTag("g0t0", 0), ActionMoveToObject(GetObjectByTag("wp_goto", 0), 0, 1.0));
			break;
		case 2:
			DelayCommand(1.0, AssignCommand(GetObjectByTag("BaoDur", 0), ActionJumpToObject(GetObjectByTag("wp_baodur_move", 0), 1)));
			break;
		case 3:
			CreateObject(1, "p_g0t001", GetLocation(GetWaypointByTag("sp_goto")), 0);
			break;
		case 4:
			break;
	}
}

