void main() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 16;
	string string1 = "hk51";
	string string2 = "hk51_1";
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	object oHK51_1;
	object oWp_51fight = GetObjectByTag("wp_51fight", 0);
	string string3 = "WP_HK51_END_";
	object object6;
	object oWP_HK51_END_L = GetObjectByTag("WP_HK51_END_L", 0);
	object object9 = GetObjectByTag("WP_HK51_END_L", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(GetFirstPC(), ActionMoveToObject(oWp_51fight, 0, 0.1));
			break;
		case 1:
			oHK51_1 = GetObjectByTag(string2, int3);
			object6 = GetObjectByTag((string3 + IntToString(int3)), 0);
			AssignCommand(oHk51cs, ClearAllActions());
			DelayCommand(0.5, AssignCommand(oHk51cs, ActionJumpToObject(object9, 1)));
			DelayCommand(0.75, AssignCommand(oHk51cs, ActionMoveToObject(oWP_HK51_END_L, 0, 0.1)));
			while ((oHK51_1 != OBJECT_INVALID)) {
				DelayCommand(2.0, AssignCommand(oHK51_1, ActionJumpToObject(object6, 1)));
				(int3--);
				oHK51_1 = GetObjectByTag(string2, int3);
				object6 = GetObjectByTag((string3 + IntToString(int3)), 0);
			}
			SetLockOrientationInDialog(GetFirstPC(), 1);
			break;
		case 2:
			AssignCommand(GetFirstPC(), ClearAllActions());
			DelayCommand(0.5, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("WP_HK47_SHUT", 0), 0, 1.0)));
			break;
		case 3:
			DelayCommand(1.5, AssignCommand(GetFirstPC(), SetFacing(90.0)));
			break;
		case 4:
			SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
			AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("SP_HK47_SHUT", 0), 1));
			break;
		case 5:
			int3 = 16;
			while ((int3 >= 0)) {
				oHK51_1 = GetObjectByTag("HK51_1", int3);
				ChangeToStandardFaction(oHK51_1, 3);
				SetFakeCombatState(oHK51_1, 1);
				(int3--);
			}
			break;
		case 6:
			int3 = 16;
			while ((int3 >= 0)) {
				oHK51_1 = GetObjectByTag("HK51_1", int3);
				AssignCommand(oHK51_1, ClearAllActions());
				(int3--);
			}
			ChangeToStandardFaction(oHk51cs, 3);
			AssignCommand(oHk51cs, ClearAllActions());
			DelayCommand(0.0, AssignCommand(oHk51cs, ActionAttack(GetFirstPC(), 0)));
			break;
		case 7:
			DelayCommand(3.0, AssignCommand(GetFirstPC(), ClearAllActions()));
			SetGlobalFadeOut(2.0, 4.0, 0.0, 0.0, 0.0);
			break;
	}
}

