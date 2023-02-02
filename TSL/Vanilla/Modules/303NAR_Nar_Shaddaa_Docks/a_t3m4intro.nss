void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if (GetGlobalBoolean("303NAR_T3M4_Solo")) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oChamp;
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		object oDoor_Warehouse_Outer = GetObjectByTag("Door_Warehouse_Outer", 0);
		AssignCommand(oDoor_Warehouse_Outer, ActionOpenDoor(oDoor_Warehouse_Outer));
		if ((GetGlobalNumber("300NAR_T3M4") > 1)) {
			CreateObject(1, "n_walrusman001", GetLocation(GetObjectByTag("wp_kodin_sp", 0)), 0);
			oChamp = GetObjectByTag("Kodin", 0);
		}
		else {
			CreateObject(1, "n_commf003", GetLocation(GetObjectByTag("wp_kodin_sp", 0)), 0);
			oChamp = GetObjectByTag("Champ", 0);
		}
		if ((GetGlobalNumber("200TEL_B4D4_T1N1") == 3)) {
			SetGlobalNumber("200TEL_B4D4_T1N1", 4);
			CreateObject(1, "b4d4", GetLocation(GetObjectByTag("wp_b4d4_sp", 0)), 0);
			CreateObject(1, "t1n1", GetLocation(GetObjectByTag("wp_t1n1_sp", 0)), 0);
		}
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		DelayCommand(1.0, AssignCommand(oChamp, ClearAllActions()));
		DelayCommand(1.0, AssignCommand(oChamp, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
