void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 2)) {
		object oDancer = GetObjectByTag("Dancer", 0);
		object object3 = GetObjectByTag("Dancer", 1);
		object object5 = GetObjectByTag("Dancer", 2);
		AssignCommand(oDancer, ClearAllActions());
		AssignCommand(object3, ClearAllActions());
		AssignCommand(object5, ClearAllActions());
		AssignCommand(oDancer, ActionMoveToObject(GetObjectByTag("wp_exitcantina", 0), 0, 1.0));
		AssignCommand(object3, ActionMoveToObject(GetObjectByTag("wp_exitcantina", 0), 0, 1.0));
		AssignCommand(object5, ActionMoveToObject(GetObjectByTag("wp_exitcantina", 0), 0, 1.0));
		DelayCommand(6.0, DestroyObject(oDancer, 0.0, 0, 0.0, 0));
		DelayCommand(6.0, DestroyObject(object3, 0.0, 0, 0.0, 0));
		DelayCommand(6.0, DestroyObject(object5, 0.0, 0, 0.0, 0));
	}
	else {
		if ((nParam1 == 3)) {
			object oHandmaiden;
			if ((GetGlobalNumber("303NAR_Dancer") == 1)) {
				oHandmaiden = GetFirstPC();
			}
			else {
				if ((GetGlobalNumber("303NAR_Dancer") == 2)) {
					oHandmaiden = GetObjectByTag("Mira", 0);
				}
				else {
					if ((GetGlobalNumber("303NAR_Dancer") == 3)) {
						oHandmaiden = GetObjectByTag("Handmaiden", 0);
					}
				}
			}
			CreateItemOnObject("g_danceroutfit", oHandmaiden, 1, 0);
			AssignCommand(oHandmaiden, ClearAllActions());
			AssignCommand(oHandmaiden, ActionUnequipItem(GetItemInSlot(1, oHandmaiden), 0));
			AssignCommand(oHandmaiden, ActionEquipItem(GetObjectByTag("DancersOutfit", 0), 1, 0));
			object oWP_dancer_spot = GetObjectByTag("WP_dancer_spot", 0);
			AssignCommand(oHandmaiden, ActionJumpToLocation(GetLocation(oWP_dancer_spot)));
			SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		}
		else {
			if ((nParam1 == 4)) {
				DestroyObject(GetObjectByTag("TwilekDomo", 0), 0.0, 0, 0.0, 0);
				SetGlobalNumber("301NAR_Domo", 3);
				StartNewModule("303NAR", "from_301NAR_cantina", "", "", "", "", "", "");
			}
			else {
				if ((nParam1 == 5)) {
					SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
					SetFadeUntilScript();
				}
				else {
					if ((nParam1 == 6)) {
						SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
					}
				}
			}
		}
	}
}