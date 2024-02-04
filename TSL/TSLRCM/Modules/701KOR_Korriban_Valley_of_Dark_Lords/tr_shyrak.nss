void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AurPostString("Spawning Shyrak", 5, 5, 5.0);
			{
				object oG_shyrack = CreateObject(1, "g_shyrack", GetLocation(GetObjectByTag("sp_g_shyrack", 0)), 1);
				object object4 = CreateObject(1, "g_shyrack", GetLocation(GetObjectByTag("sp_g_shyrack1", 0)), 1);
				ChangeToStandardFaction(oG_shyrack, 5);
				ChangeToStandardFaction(object4, 5);
				AssignCommand(oG_shyrack, ActionForceMoveToObject(GetObjectByTag("wp_shyrack_move", 0), 0, 1.0, 30.0));
				AssignCommand(object4, ActionForceMoveToObject(GetObjectByTag("wp_shyrack_move", 0), 0, 1.0, 30.0));
				DelayCommand(3.0, ChangeToStandardFaction(oG_shyrack, 1));
				DelayCommand(3.0, ChangeToStandardFaction(object4, 1));
				DelayCommand(3.1, AssignCommand(oG_shyrack, ActionAttack(GetFirstPC(), 0)));
				DelayCommand(3.1, AssignCommand(object4, ActionAttack(GetFirstPC(), 0)));
			}
			break;
		case 1:
			{
				object object11 = GetObjectByTag("g_shyrack", 0);
				object object13 = GetObjectByTag("g_shyrack", 1);
				AssignCommand(object11, ActionForceMoveToObject(GetObjectByTag("wp_shyrack_move", 0), 0, 1.0, 30.0));
				AssignCommand(object13, ActionForceMoveToObject(GetObjectByTag("wp_shyrack_move", 0), 0, 1.0, 30.0));
				DelayCommand(3.0, ChangeToStandardFaction(object11, 1));
				DelayCommand(3.0, ChangeToStandardFaction(object13, 1));
				DelayCommand(3.1, AssignCommand(object11, ActionAttack(GetFirstPC(), 0)));
				DelayCommand(3.1, AssignCommand(object13, ActionAttack(GetFirstPC(), 0)));
			}
			break;
	}
}