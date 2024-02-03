void main() {
	object oPC = GetFirstPC();
	object oG_repsold_capt;
	object oWp_2nd_charge = GetObjectByTag("wp_2nd_charge", 0);
	int nParam1 = GetScriptParameter(1);
	int int3;
	object oAreaObject;
	int nLen = GetStringLength("g_reps");
	string string1;
	switch (nParam1) {
		case 0:
			{
				object oWp_2nd_pc = GetObjectByTag("wp_2nd_pc", 0);
				AssignCommand(oPC, ClearAllActions());
				DelayCommand(1.0, AssignCommand(oPC, ActionForceMoveToObject(oWp_2nd_pc, 0, 1.0, 30.0)));
				int int6 = 0;
				object o711_2nd_door = GetObjectByTag("711_2nd_door", int6);
				while (GetIsObjectValid(o711_2nd_door)) {
					DelayCommand(4.0, AssignCommand(o711_2nd_door, ActionCloseDoor(o711_2nd_door)));
					DelayCommand(4.0, SetLocked(o711_2nd_door, 1));
					(int6++);
				o711_2nd_door = GetObjectByTag("711_2nd_door", int6);
				}
			}
			break;
		case 1:
			int3 = 0;
			while ((int3 <= 4)) {
				oG_repsold_capt = GetObjectByTag("g_repsold", int3);
				ChangeToStandardFaction(oG_repsold_capt, 2);
				DelayCommand(((IntToFloat(int3) / 2) + 1.5), AssignCommand(oG_repsold_capt, ActionMoveToObject(oWp_2nd_charge, 1, 1.0)));
				(int3++);
			}
			oG_repsold_capt = GetObjectByTag("g_repsold_capt", 0);
			ChangeToStandardFaction(oG_repsold_capt, 2);
			DelayCommand(3.5, AssignCommand(oG_repsold_capt, ActionMoveToObject(oWp_2nd_charge, 1, 1.0)));
			SetLocalBoolean(GetObjectByTag("wp_2nd_charge", 0), 55, 1);
			break;
		case 2:
			oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
			while (GetIsObjectValid(oAreaObject)) {
				string1 = GetStringLeft(GetTag(oAreaObject), nLen);
				if ((string1 == "g_reps")) {
					AssignCommand(oAreaObject, SurrenderToEnemies());
					AssignCommand(oAreaObject, CancelCombat(GetFirstPC()));
					DestroyObject(oAreaObject, 0.0, 0, 0.0, 0);
				}
				oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
			}
			break;
		case 3:
			{
				object object18 = GetObjectByTag("711_2nd_door", 2);
				object object20 = GetObjectByTag("711_2nd_door", 3);
				SetLocked(object18, 0);
				SetLocked(object20, 0);
				AssignCommand(object18, ActionOpenDoor(object18));
				AssignCommand(object20, ActionOpenDoor(object20));
				ExecuteScript("a_spawn_mand", OBJECT_SELF, 0xFFFFFFFF);
				DelayCommand(7.0, AssignCommand(object18, ActionCloseDoor(object18)));
				DelayCommand(7.0, AssignCommand(object20, ActionCloseDoor(object20)));
				DelayCommand(7.1, SetLocked(object18, 1));
				DelayCommand(7.1, SetLocked(object20, 1));
			}
			break;
		case 4:
			break;
	}
}

