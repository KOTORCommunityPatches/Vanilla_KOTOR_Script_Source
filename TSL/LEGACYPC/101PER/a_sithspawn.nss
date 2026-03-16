void main() {
	if ((GetGlobalNumber("101PER_Sion_Arrives") == 1)) {
		object oSithspawn = GetObjectByTag("sithspawn", 0);
		if ((GetIsObjectValid(oSithspawn) && (!GetLocalBoolean(oSithspawn, 30)))) {
			SetLocalBoolean(oSithspawn, 30, 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object oPC = GetFirstPC();
			object object5 = GetNextPC();
			object oWP_move_player_start = GetObjectByTag("WP_move_player_start", 0);
			object oWP_move_player = GetObjectByTag("WP_move_player", 0);
			object oWP_move_kreia_start = GetObjectByTag("WP_move_kreia_start", 0);
			object oWP_move_kreia = GetObjectByTag("WP_move_kreia", 0);
			location location1 = GetLocation(oPC);
			object oWP_wakeup_donnie = GetObjectByTag("WP_wakeup_donnie", 0);
			object oShapeObject = GetFirstObjectInShape(2, 20.0, location1, 0, 1, [0.0,0.0,0.0]);
			while (GetIsObjectValid(oShapeObject)) {
				if ((GetTag(oShapeObject) == "g_assassindrd01")) {
					AurPostString("a_sithspawn: Found a droid, remove him!", 5, 14, 2.0);
					AssignCommand(oShapeObject, ActionJumpToObject(oWP_wakeup_donnie, 1));
					AssignCommand(oShapeObject, ActionWait(1.0));
					AssignCommand(oShapeObject, ActionDoCommand(DestroyObject(oShapeObject, 0.0, 0, 0.0, 0)));
				}
				oShapeObject = GetNextObjectInShape(2, 20.0, location1, 0, 1, [0.0,0.0,0.0]);
			}
			if (GetIsObjectValid(oPC)) {
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionJumpToObject(oWP_move_player_start, 1));
				DelayCommand(0.5, AssignCommand(oPC, ActionMoveToObject(oWP_move_player, 1, 1.0)));
			}
			if (GetIsObjectValid(object5)) {
				AssignCommand(object5, ClearAllActions());
				AssignCommand(object5, ActionJumpToObject(oWP_move_kreia_start, 1));
				DelayCommand(1.0, AssignCommand(object5, ActionMoveToObject(oWP_move_kreia, 1, 1.0)));
			}
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
			object oWP_sithass1 = GetObjectByTag("WP_sithass1", 0);
			object oWP_sithass2 = GetObjectByTag("WP_sithass2", 0);
			object oN_sithsoldier001 = CreateObject(1, "n_sithsoldier001", GetLocation(oWP_sithass1), 0);
			object object26 = CreateObject(1, "n_sithsoldier001", GetLocation(oWP_sithass2), 0);
			ChangeToStandardFaction(oN_sithsoldier001, 5);
			ChangeToStandardFaction(object26, 5);
		}
	}
}

