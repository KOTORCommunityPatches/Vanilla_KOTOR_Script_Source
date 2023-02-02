void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ChangeToStandardFaction(GetObjectByTag("chano", 0), 1);
	}
	else {
		if ((nParam1 == 2)) {
			ChangeToStandardFaction(GetObjectByTag("vogga_enforcer", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("vogga_enforcer", 1), 1);
		}
		else {
			if ((nParam1 == 3)) {
				object oPC = GetFirstPC();
				object oWp_chano_exit4 = GetObjectByTag("wp_chano_exit", 0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionMoveToObject(oWp_chano_exit4, 0, 1.0));
				oPC = GetNextPC();
				oWp_chano_exit4 = GetObjectByTag("wp_chano_exit2", 0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionMoveToObject(oWp_chano_exit4, 0, 1.0));
				oPC = GetNextPC();
				oWp_chano_exit4 = GetObjectByTag("wp_chano_exit3", 0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionMoveToObject(oWp_chano_exit4, 0, 1.0));
				SetGlobalFadeOut(3.0, 1.0, 0.0, 0.0, 0.0);
				object oChano = GetObjectByTag("chano", 0);
				object oVogga_enforcer = GetObjectByTag("vogga_enforcer", 0);
				object object16 = GetObjectByTag("vogga_enforcer", 1);
				oWp_chano_exit4 = GetObjectByTag("wp_chano_exit4", 0);
				DelayCommand(1.0, ChangeToStandardFaction(oChano, 2));
				DelayCommand(1.0, ChangeToStandardFaction(oVogga_enforcer, 4));
				DelayCommand(1.0, ChangeToStandardFaction(object16, 4));
				SetCommandable(1, oVogga_enforcer);
				SetCommandable(1, object16);
				AssignCommand(oVogga_enforcer, DelayCommand(1.5, ClearAllActions()));
				AssignCommand(oVogga_enforcer, DelayCommand(1.5, CutsceneAttack(oChano, 217, 3, GetCurrentHitPoints(oChano))));
				AssignCommand(oVogga_enforcer, DelayCommand(6.0, ChangeToStandardFaction(oVogga_enforcer, 5)));
				AssignCommand(oVogga_enforcer, DelayCommand(6.0, ClearAllActions()));
				AssignCommand(oVogga_enforcer, DelayCommand(6.0, ActionMoveToObject(oWp_chano_exit4, 0, 3.0)));
				AssignCommand(oVogga_enforcer, DelayCommand(9.0, DestroyObject(oVogga_enforcer, 0.0, 0, 0.0, 0)));
				AssignCommand(oVogga_enforcer, DelayCommand(6.0, ChangeToStandardFaction(object16, 5)));
				AssignCommand(object16, DelayCommand(6.0, ClearAllActions()));
				AssignCommand(object16, DelayCommand(6.0, ActionMoveToObject(oWp_chano_exit4, 0, 3.0)));
				AssignCommand(object16, DelayCommand(9.0, DestroyObject(object16, 0.0, 0, 0.0, 0)));
				DelayCommand(4.0, SetGlobalFadeIn(0.1, 1.0, 0.0, 0.0, 0.0));
			}
		}
	}
}
