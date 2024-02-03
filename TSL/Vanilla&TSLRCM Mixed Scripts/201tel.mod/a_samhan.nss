void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			ChangeToStandardFaction(GetObjectByTag("201_Gren", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("TSF", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("TSF", 1), 2);
			ChangeToStandardFaction(GetObjectByTag("Samhan", 0), 1);
			break;
		case 2:
			SetGlobalNumber("200TEL_Sting", 9);
			DestroyObject(GetObjectByTag("Samhan", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("czerka_bay", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("201_Gren", 0), 0.0, 0, 0.0, 0);
			StartNewModule("202TEL", "from_201TEL_tsf", "", "", "", "", "", "");
			break;
		case 3:
			ChangeToStandardFaction(GetObjectByTag("tsf_smuggling", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("TSF", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("TSF", 1), 1);
			break;
		case 4:
			SetGlobalNumber("200TEL_Smuggling", 10);
			DestroyObject(GetObjectByTag("Samhan", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("czerka_bay", 0), 0.0, 0, 0.0, 0);
			StartNewModule("202TEL", "from_201TEL_samhan", "", "", "", "", "", "");
			break;
		case 5:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			if ((GetGlobalNumber("200TEL_Smuggling") == 9)) {
				CreateObject(1, "n_repsold006", GetLocation(GetObjectByTag("wp_spawn_gren", 0)), 0);
			}
			else {
				object o201_Gren = GetObjectByTag("201_Gren", 0);
				if (GetIsObjectValid(o201_Gren)) {
					AssignCommand(o201_Gren, ClearAllActions());
					AssignCommand(o201_Gren, ActionJumpToObject(GetObjectByTag("wp_spawn_gren", 0), 1));
				}
				else {
					CreateObject(1, "n_repoff001", GetLocation(GetObjectByTag("wp_spawn_gren", 0)), 0);
				}
			}
			CreateObject(1, "n_repsold001", GetLocation(GetObjectByTag("wp_spawn_guard1", 0)), 0);
			CreateObject(1, "n_repsold001", GetLocation(GetObjectByTag("wp_spawn_guard2", 0)), 0);
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			break;
	}
}

