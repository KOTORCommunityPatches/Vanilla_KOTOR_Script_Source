void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ChangeToStandardFaction(GetObjectByTag("chano", 0), 1);
	}
	else {
		if ((nParam1 == 2)) {
			ChangeToStandardFaction(GetObjectByTag("voggaThug1", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("voggaThug2", 0), 1);
		}
		else {
			if ((nParam1 == 3)) {
				object oPC = GetFirstPC();
				object oWp_chano_exit = GetObjectByTag("wp_chano_exit", 0);
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionMoveToObject(oWp_chano_exit, 0, 1.0));
				SetGlobalFadeOut(3.0, 1.0, 0.0, 0.0, 0.0);
				object oChano = GetObjectByTag("chano", 0);
				object oVoggaThug1 = GetObjectByTag("voggaThug1", 0);
				object oVoggaThug2 = GetObjectByTag("voggaThug2", 0);
				object oWp_chano_exit4 = GetObjectByTag("wp_chano_exit4", 0);
				DelayCommand(1.0, ChangeToStandardFaction(oChano, 2));
				DelayCommand(1.0, ChangeToStandardFaction(oVoggaThug1, 4));
				DelayCommand(1.0, ChangeToStandardFaction(oVoggaThug2, 4));
				SetCommandable(1, oVoggaThug1);
				SetCommandable(1, oVoggaThug2);
				AssignCommand(oVoggaThug1, DelayCommand(1.5, ClearAllActions()));
				AssignCommand(oVoggaThug1, DelayCommand(1.5, CutsceneAttack(oChano, 217, 3, GetCurrentHitPoints(oChano))));
				AssignCommand(oVoggaThug1, DelayCommand(6.0, ChangeToStandardFaction(oVoggaThug1, 5)));
				AssignCommand(oVoggaThug1, DelayCommand(6.0, ClearAllActions()));
				AssignCommand(oVoggaThug1, DelayCommand(6.0, ActionMoveToObject(oWp_chano_exit4, 0, 3.0)));
				AssignCommand(oVoggaThug1, DelayCommand(9.0, DestroyObject(oVoggaThug1, 0.0, 0, 0.0, 0)));
				AssignCommand(oVoggaThug1, DelayCommand(6.0, ChangeToStandardFaction(oVoggaThug2, 5)));
				AssignCommand(oVoggaThug2, DelayCommand(6.0, ClearAllActions()));
				AssignCommand(oVoggaThug2, DelayCommand(6.0, ActionMoveToObject(oWp_chano_exit4, 0, 3.0)));
				AssignCommand(oVoggaThug2, DelayCommand(9.0, DestroyObject(oVoggaThug2, 0.0, 0, 0.0, 0)));
				DelayCommand(4.0, SetGlobalFadeIn(0.1, 1.0, 0.0, 0.0, 0.0));
			}
		}
	}
}

