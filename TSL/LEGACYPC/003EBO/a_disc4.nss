void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oPC = GetFirstPC();
				object oDisciple = GetObjectByTag("Disciple", 0);
				AssignCommand(oPC, ActionPlayAnimation(35, 1.0, (-1.0)));
				AssignCommand(oDisciple, ActionPlayAnimation(35, 1.0, (-1.0)));
			}
			break;
		case 2:
			{
				object oMira = GetObjectByTag("Mira", 0);
				object oWP_mira_cut_2_1 = GetObjectByTag("WP_mira_cut_2_1", 0);
				AssignCommand(oMira, ClearAllActions());
				AssignCommand(oMira, ActionJumpToObject(oWP_mira_cut_2_1, 1));
			}
			break;
		case 3:
			{
				object object9 = GetObjectByTag("Mira", 0);
				object oWP_mira_cut_2 = GetObjectByTag("WP_mira_cut_2", 0);
				AssignCommand(object9, ActionMoveToObject(oWP_mira_cut_2, 0, 1.0));
			}
			break;
	}
}

