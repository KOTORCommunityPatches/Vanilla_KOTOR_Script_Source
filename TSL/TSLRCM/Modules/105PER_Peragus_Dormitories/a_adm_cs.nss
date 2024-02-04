void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object oAdmOff = GetObjectByTag("AdmOff", 0);
				DelayCommand(1.0, AssignCommand(oAdmOff, ActionPlayAnimation(101, 1.0, 0.0)));
				DelayCommand(2.0, AssignCommand(oAdmOff, ActionPlayAnimation(100, 1.0, 0.0)));
				CreateObject(1, "n_minefirst004", GetLocation(GetObjectByTag("WP_GASDEATH1", 0)), 0);
				CreateObject(1, "n_minefirst005", GetLocation(GetObjectByTag("WP_GASDEATH2", 0)), 0);
				CreateObject(1, "n_minefirst006", GetLocation(GetObjectByTag("WP_GASDEATH3", 0)), 0);
				CreateObject(1, "n_minefirst007", GetLocation(GetObjectByTag("WP_GASDEATH4", 0)), 0);
				CreateObject(1, "n_minefirst008", GetLocation(GetObjectByTag("WP_GASDEATH5", 0)), 0);
			}
			break;
		case 1:
			{
				object object13 = GetObjectByTag("AdmOff", 0);
				CreateObject(64, "stmventc003", GetLocation(GetObjectByTag("WP_ADM_SPAWN", 0)), 0);
				SoundObjectPlay(GetObjectByTag("SteamC", 0));
				DelayCommand(4.0, AssignCommand(object13, ClearAllActions()));
				DelayCommand(4.0, AssignCommand(object13, ActionPlayAnimation(45, 1.0, 1.0)));
				DelayCommand(5.1, AssignCommand(object13, ActionPlayAnimation(30, 1.0, (-1.0))));
			}
			break;
		case 2:
			{
				object oMineGas5 = GetObjectByTag("MineGas1", 0);
				DelayCommand(1.0, AssignCommand(oMineGas5, ActionPlayAnimation(45, 1.0, 1.0)));
				DelayCommand(2.1, AssignCommand(oMineGas5, ActionPlayAnimation(30, 1.0, (-1.0))));
				oMineGas5 = GetObjectByTag("MineGas2", 0);
				DelayCommand(3.0, AssignCommand(oMineGas5, ActionPlayAnimation(45, 1.0, 1.0)));
				DelayCommand(4.1, AssignCommand(oMineGas5, ActionPlayAnimation(30, 1.0, (-1.0))));
				oMineGas5 = GetObjectByTag("MineGas3", 0);
				DelayCommand(5.0, AssignCommand(oMineGas5, ActionPlayAnimation(45, 1.0, 1.0)));
				DelayCommand(6.1, AssignCommand(oMineGas5, ActionPlayAnimation(30, 1.0, (-1.0))));
				oMineGas5 = GetObjectByTag("MineGas4", 0);
				DelayCommand(8.0, AssignCommand(oMineGas5, ActionPlayAnimation(45, 1.0, 1.0)));
				DelayCommand(9.1, AssignCommand(oMineGas5, ActionPlayAnimation(30, 1.0, (-1.0))));
				oMineGas5 = GetObjectByTag("MineGas5", 0);
				DelayCommand(7.0, AssignCommand(oMineGas5, ActionPlayAnimation(45, 1.0, 1.0)));
				DelayCommand(8.1, AssignCommand(oMineGas5, ActionPlayAnimation(30, 1.0, (-1.0))));
				SoundObjectStop(GetObjectByTag("SteamC", 0));
			}
			break;
	}
}