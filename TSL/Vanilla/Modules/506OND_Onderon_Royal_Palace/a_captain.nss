void main() {
	int nParam1 = GetScriptParameter(1);
	location location1;
	object oVaklu_captain;
	object oWp_beast_capt_end;
	switch (nParam1) {
		case 0:
			location1 = GetLocation(GetObjectByTag("wp_beast_origin", 0));
			oWp_beast_capt_end = GetObjectByTag("wp_ls_bostuco", 0);
			oVaklu_captain = GetObjectByTag("sith_wrangle", 0);
			DelayCommand(0.5, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("boma_wrangle", 0);
			DelayCommand(0.8, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("boma_wrangle", 1);
			DelayCommand(1.0, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("maalraas_wrangle", 0);
			DelayCommand(1.2, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("maalraas_wrangle", 1);
			DelayCommand(1.5, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("maalraas_wrangle", 2);
			DelayCommand(2.5, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("vaklu_captain", 0);
			oWp_beast_capt_end = GetObjectByTag("wp_beast_capt", 0);
			AssignCommand(oVaklu_captain, ClearAllActions());
			AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 0, 1.0, 30.0));
			break;
		case 1:
			location1 = GetLocation(GetObjectByTag("wp_beast_origin", 0));
			oWp_beast_capt_end = GetObjectByTag("wp_ls_bostuco", 0);
			oVaklu_captain = GetObjectByTag("sith_wrangle", 0);
			AssignCommand(oVaklu_captain, ClearAllActions());
			ChangeToStandardFaction(oVaklu_captain, 1);
			DelayCommand(0.5, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("boma_wrangle", 0);
			AssignCommand(oVaklu_captain, ClearAllActions());
			ChangeToStandardFaction(oVaklu_captain, 1);
			DelayCommand(0.8, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("boma_wrangle", 1);
			AssignCommand(oVaklu_captain, ClearAllActions());
			ChangeToStandardFaction(oVaklu_captain, 1);
			DelayCommand(1.0, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("maalraas_wrangle", 0);
			AssignCommand(oVaklu_captain, ClearAllActions());
			ChangeToStandardFaction(oVaklu_captain, 1);
			DelayCommand(1.2, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("maalraas_wrangle", 1);
			AssignCommand(oVaklu_captain, ClearAllActions());
			ChangeToStandardFaction(oVaklu_captain, 1);
			DelayCommand(1.5, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("maalraas_wrangle", 2);
			AssignCommand(oVaklu_captain, ClearAllActions());
			ChangeToStandardFaction(oVaklu_captain, 1);
			DelayCommand(2.5, AssignCommand(oVaklu_captain, ActionForceMoveToObject(oWp_beast_capt_end, 1, 1.0, 30.0)));
			oVaklu_captain = GetObjectByTag("vaklu_captain", 0);
			oWp_beast_capt_end = GetObjectByTag("wp_beast_capt_end", 0);
			AssignCommand(oVaklu_captain, ClearAllActions());
			DelayCommand(0.1, AssignCommand(oVaklu_captain, ActionJumpToObject(oWp_beast_capt_end, 1)));
			break;
	}
}
