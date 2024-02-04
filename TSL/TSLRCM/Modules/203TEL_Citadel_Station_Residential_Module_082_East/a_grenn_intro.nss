void main() {
	int nParam1 = GetScriptParameter(1);
	object o203_moza;
	object o203_gren;
	object o203_tsf1;
	object o203_tsf2;
	object oWp_tsf2_return;
	object oAdoor_intro = GetObjectByTag("adoor_intro", 0);
	if ((nParam1 == 1)) {
		SetLocked(oAdoor_intro, 0);
		DelayCommand(0.5, AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro)));
		o203_gren = GetObjectByTag("203_gren", 0);
		oWp_tsf2_return = GetWaypointByTag("wp_grenn_leave1");
		AssignCommand(o203_gren, ClearAllActions());
		SetCreatureAILevel(o203_gren, 3);
		AssignCommand(o203_gren, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0));
		AssignCommand(o203_gren, ActionDoCommand(ResetCreatureAILevel(o203_gren)));
		o203_tsf1 = GetObjectByTag("203_tsf1", 0);
		oWp_tsf2_return = GetWaypointByTag("wp_tsf1_leave");
		AssignCommand(o203_tsf1, ClearAllActions());
		SetCreatureAILevel(o203_tsf1, 3);
		DelayCommand(0.5, AssignCommand(o203_tsf1, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
		DelayCommand(0.5, AssignCommand(o203_tsf1, ActionDoCommand(ResetCreatureAILevel(o203_tsf1))));
		o203_tsf2 = GetObjectByTag("203_tsf2", 0);
		oWp_tsf2_return = GetWaypointByTag("wp_tsf2_leave");
		AssignCommand(o203_tsf2, ClearAllActions());
		SetCreatureAILevel(o203_tsf2, 3);
		DelayCommand(0.5, AssignCommand(o203_tsf2, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
		DelayCommand(0.5, AssignCommand(o203_tsf2, ActionDoCommand(ResetCreatureAILevel(o203_tsf2))));
		DelayCommand(5.0, AssignCommand(oAdoor_intro, ActionCloseDoor(oAdoor_intro)));
		SetLocked(oAdoor_intro, 1);
		o203_moza = GetObjectByTag("203_gren", 0);
		oWp_tsf2_return = GetWaypointByTag("wp_grenn_1");
		object oPC = GetFirstPC();
		SetLockOrientationInDialog(oPC, 0);
		AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("Atton", 0))));
		DelayCommand(9.0, AssignCommand(o203_moza, ActionJumpToObject(oWp_tsf2_return, 1)));
	}
	else {
		if ((nParam1 == 2)) {
			o203_moza = GetObjectByTag("203_tsf2", 0);
			AssignCommand(o203_moza, ClearAllActions());
			SetLockOrientationInDialog(GetPCSpeaker(), 0);
			o203_moza = GetPCSpeaker();
			oWp_tsf2_return = GetWaypointByTag("From_202TEL_intro");
			AssignCommand(o203_moza, ActionMoveToObject(oWp_tsf2_return, 0, 1.0));
			o203_moza = GetObjectByTag("203_moza", 0);
			oWp_tsf2_return = GetWaypointByTag("wp_moza_door");
			AssignCommand(o203_moza, ClearAllActions());
			SetCreatureAILevel(o203_moza, 3);
			AssignCommand(o203_moza, ActionJumpToObject(oWp_tsf2_return, 1));
			SetLocked(oAdoor_intro, 0);
			DelayCommand(0.5, AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro)));
			oWp_tsf2_return = GetWaypointByTag("wp_moza_room");
			DelayCommand(0.5, AssignCommand(o203_moza, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
			DelayCommand(0.5, AssignCommand(o203_moza, ActionDoCommand(ResetCreatureAILevel(o203_moza))));
			DelayCommand(5.0, AssignCommand(oAdoor_intro, ActionCloseDoor(oAdoor_intro)));
			DelayCommand(5.1, SetLocked(oAdoor_intro, 1));
		}
		else {
			if ((nParam1 == 3)) {
				SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
				SetGlobalNumber("203TEL_WallT_Call", 5);
				o203_gren = GetObjectByTag("203_gren", 0);
				oWp_tsf2_return = GetWaypointByTag("wp_grenn_2");
				AssignCommand(o203_gren, ClearAllActions());
				AssignCommand(o203_gren, ActionJumpToObject(oWp_tsf2_return, 1));
				SetLocked(oAdoor_intro, 0);
				DelayCommand(0.5, AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro)));
				oWp_tsf2_return = GetWaypointByTag("wp_grenn_return");
				AssignCommand(o203_gren, ClearAllActions());
				SetCreatureAILevel(o203_gren, 3);
				AssignCommand(o203_gren, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0));
				AssignCommand(o203_gren, ActionDoCommand(ResetCreatureAILevel(o203_gren)));
				o203_tsf1 = GetObjectByTag("203_tsf1", 0);
				oWp_tsf2_return = GetWaypointByTag("wp_tsf1_return");
				AssignCommand(o203_tsf1, ClearAllActions());
				SetCreatureAILevel(o203_tsf1, 3);
				DelayCommand(0.5, AssignCommand(o203_tsf1, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
				DelayCommand(0.5, AssignCommand(o203_tsf1, ActionDoCommand(ResetCreatureAILevel(o203_tsf1))));
				o203_tsf2 = GetObjectByTag("203_tsf2", 0);
				oWp_tsf2_return = GetWaypointByTag("wp_tsf2_return");
				AssignCommand(o203_tsf2, ClearAllActions());
				SetCreatureAILevel(o203_tsf2, 3);
				DelayCommand(0.5, AssignCommand(o203_tsf2, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
				DelayCommand(0.5, AssignCommand(o203_tsf2, ActionDoCommand(ResetCreatureAILevel(o203_tsf2))));
				o203_moza = GetPCSpeaker();
				AssignCommand(o203_moza, ClearAllActions());
				oWp_tsf2_return = GetWaypointByTag("From_202TEL_intro");
				DelayCommand(1.5, AssignCommand(o203_moza, ActionForceMoveToLocation(GetLocation(oWp_tsf2_return), 0, 30.0)));
				DelayCommand(1.5, AssignCommand(o203_moza, ActionDoCommand(SetFacing(GetFacing(oWp_tsf2_return)))));
			}
			else {
				if ((nParam1 == 4)) {
					SetLocked(oAdoor_intro, 0);
					AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro));
					DelayCommand(5.0, AssignCommand(oAdoor_intro, ActionCloseDoor(oAdoor_intro)));
					DelayCommand(5.1, SetLocked(oAdoor_intro, 1));
					o203_moza = GetObjectByTag("203_moza", 0);
					oWp_tsf2_return = GetWaypointByTag("wp_grenn_leave1");
					AssignCommand(o203_moza, ClearAllActions());
					SetCreatureAILevel(o203_moza, 3);
					DelayCommand(0.1, AssignCommand(o203_moza, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
					DelayCommand(0.5, AssignCommand(o203_moza, ActionDoCommand(ResetCreatureAILevel(o203_moza))));
					DelayCommand(8.0, DestroyObject(o203_moza, 0.0, 1, 0.0, 0));
				}
				else {
					if ((nParam1 == 5)) {
						SetAreaUnescapable(0);
						SetLocked(oAdoor_intro, 0);
						AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro));
						o203_gren = GetObjectByTag("203_gren", 0);
						oWp_tsf2_return = GetWaypointByTag("wp_grenn_leave1");
						AssignCommand(o203_gren, ClearAllActions());
						SetCreatureAILevel(o203_gren, 3);
						AssignCommand(o203_gren, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0));
						AssignCommand(o203_gren, ActionDoCommand(ResetCreatureAILevel(o203_gren)));
						o203_tsf1 = GetObjectByTag("203_tsf1", 0);
						oWp_tsf2_return = GetWaypointByTag("wp_tsf1_leave");
						AssignCommand(o203_tsf1, ClearAllActions());
						SetCreatureAILevel(o203_tsf1, 3);
						DelayCommand(0.5, AssignCommand(o203_tsf1, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
						DelayCommand(0.5, AssignCommand(o203_tsf1, ActionDoCommand(ResetCreatureAILevel(o203_tsf1))));
						o203_tsf2 = GetObjectByTag("203_tsf2", 0);
						oWp_tsf2_return = GetWaypointByTag("wp_tsf2_leave");
						AssignCommand(o203_tsf2, ClearAllActions());
						SetCreatureAILevel(o203_tsf2, 3);
						DelayCommand(0.5, AssignCommand(o203_tsf2, ActionForceMoveToObject(oWp_tsf2_return, 0, 1.0, 30.0)));
						DelayCommand(0.5, AssignCommand(o203_tsf2, ActionDoCommand(ResetCreatureAILevel(o203_tsf2))));
						DelayCommand(5.0, AssignCommand(oAdoor_intro, ActionCloseDoor(oAdoor_intro)));
						DelayCommand(5.0, AssignCommand(GetFirstPC(), SetFacingPoint(GetPositionFromLocation(GetLocation(GetObjectByTag("atton", 0))))));
					}
					else {
						if ((nParam1 == 6)) {
							o203_moza = GetObjectByTag("203_gren", 0);
							DelayCommand(5.0, DestroyObject(o203_moza, 0.0, 1, 0.0, 0));
							o203_moza = GetObjectByTag("203_tsf1", 0);
							DelayCommand(5.0, DestroyObject(o203_moza, 0.0, 1, 0.0, 0));
							o203_moza = GetObjectByTag("203_tsf2", 0);
							DelayCommand(5.0, DestroyObject(o203_moza, 0.0, 1, 0.0, 0));
						}
						else {
							if ((nParam1 == 7)) {
								object oKreia = GetObjectByTag("kreia", 0);
								DelayCommand(0.2, AssignCommand(oKreia, ActionPlayAnimation(35, 1.0, (-1.0))));
								object object50 = GetFirstPC();
								SetLockOrientationInDialog(object50, 1);
								DelayCommand(0.2, AssignCommand(object50, ActionPlayAnimation(35, 1.0, (-1.0))));
							}
							else {
								if ((nParam1 == 8)) {
									object object52 = GetObjectByTag("kreia", 0);
									SetCreatureAILevel(object52, 3);
									AssignCommand(object52, ClearAllActions());
									AssignCommand(object52, ActionJumpToObject(GetObjectByTag("wp_sleep_kreia", 0), 1));
									AssignCommand(object52, ActionDoCommand(ResetCreatureAILevel(o203_gren)));
									object object55 = GetFirstPC();
									SetLockOrientationInDialog(object55, 1);
									AssignCommand(object55, ClearAllActions());
									AssignCommand(object55, ActionJumpToObject(GetObjectByTag("wp_sleep_pc", 0), 1));
								}
							}
						}
					}
				}
			}
		}
	}
}