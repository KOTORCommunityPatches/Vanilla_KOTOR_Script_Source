void main() {
	int nParam1 = GetScriptParameter(1);
	object oSith_cs;
	object oWp_captain_mark;
	object oSarc_door = GetObjectByTag("sarc_door", 0);
	object oSith_warrior = GetObjectByTag("sith_warrior", 0);
	object object7 = GetObjectByTag("sith_warrior", 1);
	switch (nParam1) {
		case 0:
			DelayCommand(2.5, AssignCommand(GetObjectByTag("sith_captain", 0), ActionMoveToObject(GetObjectByTag("wp_intro_cs1", 0), 1, 1.0)));
			SetLockOrientationInDialog(oSith_warrior, 1);
			SetLockOrientationInDialog(object7, 1);
			ChangeToStandardFaction(oSith_warrior, 22);
			ChangeToStandardFaction(object7, 22);
			AssignCommand(oSith_warrior, ActionAttack(object7, 0));
			AssignCommand(object7, ActionAttack(oSith_warrior, 0));
			break;
		case 1:
			DelayCommand(1.0, AssignCommand(oSith_warrior, ClearAllActions()));
			DelayCommand(1.0, AssignCommand(oSith_warrior, ClearAllEffects()));
			DelayCommand(1.0, AssignCommand(object7, ClearAllActions()));
			DelayCommand(1.0, AssignCommand(object7, ClearAllEffects()));
			DelayCommand(1.0, AssignCommand(oSith_warrior, SurrenderToEnemies()));
			DelayCommand(1.0, AssignCommand(object7, SurrenderToEnemies()));
			DelayCommand(1.1, ChangeToStandardFaction(oSith_warrior, 1));
			DelayCommand(1.1, ChangeToStandardFaction(object7, 1));
			DelayCommand(1.1, SetMinOneHP(oSith_warrior, 0));
			DelayCommand(1.1, SetMinOneHP(object7, 0));
			DelayCommand(1.5, AssignCommand(oSith_warrior, SetFacing(90.0)));
			DelayCommand(1.7, AssignCommand(object7, SetFacing(90.0)));
			break;
		case 2:
			oSith_cs = GetObjectByTag("sith_captain", 0);
			oWp_captain_mark = GetObjectByTag("wp_intro_cs2", 0);
			DelayCommand(0.1, AssignCommand(oSith_cs, ActionMoveToObject(oWp_captain_mark, 1, 1.0)));
			oSith_cs = GetObjectByTag("sith_cs", 0);
			DelayCommand(1.0, AssignCommand(oSith_cs, ActionMoveToObject(oWp_captain_mark, 1, 1.0)));
			oSith_cs = GetObjectByTag("sith_cs", 1);
			DelayCommand(1.2, AssignCommand(oSith_cs, ActionMoveToObject(oWp_captain_mark, 1, 1.0)));
			DelayCommand(4.3, AssignCommand(oSarc_door, ActionCloseDoor(oSarc_door)));
			SetLocked(oSarc_door, 1);
			break;
		case 3:
			oSith_cs = GetObjectByTag("sith_captain", 0);
			oWp_captain_mark = GetObjectByTag("wp_captain_mark", 0);
			AssignCommand(oSith_cs, ActionJumpToObject(oWp_captain_mark, 1));
			SetLocalBoolean(oSarc_door, 41, 1);
			ChangeToStandardFaction(oSith_cs, 1);
			oSith_cs = GetObjectByTag("sith_cs", 0);
			ChangeToStandardFaction(oSith_cs, 1);
			oSith_cs = GetObjectByTag("sith_cs", 1);
			ChangeToStandardFaction(oSith_cs, 1);
			SetLockOrientationInDialog(oSith_warrior, 0);
			SetLockOrientationInDialog(object7, 0);
			break;
	}
}