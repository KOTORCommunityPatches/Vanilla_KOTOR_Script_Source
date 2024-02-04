void main() {
	int nParam1 = GetScriptParameter(1);
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	switch (nParam1) {
		case 1:
			{
				object oWP_kreia_cut_3_1 = GetObjectByTag("WP_kreia_cut_3_1", 0);
				AssignCommand(oKreia, ActionJumpToObject(oWP_kreia_cut_3_1, 1));
				AssignCommand(oDisciple, ActionPlayAnimation(15, 0.5, (-1.0)));
			}
			break;
		case 2:
			{
				object oWP_kreia_cut_3_2 = GetObjectByTag("WP_kreia_cut_3_2", 0);
				AssignCommand(oDisciple, ActionPlayAnimation(15, 0.5, 2.0));
				AssignCommand(oKreia, ActionWait(1.0));
				AssignCommand(oKreia, ActionMoveToObject(oWP_kreia_cut_3_2, 1, 1.0));
			}
			break;
		case 3:
			{
				object oWP_kreia_cut_3_3 = GetObjectByTag("WP_kreia_cut_3_3", 0);
				AssignCommand(oKreia, ActionJumpToObject(oWP_kreia_cut_3_3, 1));
				object oWP_disc_cut_7_1 = GetObjectByTag("WP_disc_cut_7_1", 0);
				AssignCommand(oDisciple, ActionMoveToObject(oWP_disc_cut_7_1, 0, 1.0));
				AssignCommand(oDisciple, ActionPlayAnimation(100, 1.0, 0.0));
				AssignCommand(oDisciple, ActionDoCommand(SetDialogPlaceableCamera(25)));
				object object13 = GetObjectByTag("WP_kreia_cut_3_2", 0);
				AssignCommand(oDisciple, ActionMoveToObject(object13, 0, 1.0));
				AssignCommand(oDisciple, ActionPlayAnimation(100, 1.0, 0.0));
				AssignCommand(oDisciple, ActionPlayAnimation(101, 1.0, 0.0));
			}
			break;
		case 4:
			{
				object oWP_disc_cut_7_2 = GetObjectByTag("WP_disc_cut_7_2", 0);
				AssignCommand(oDisciple, ActionMoveToObject(oWP_disc_cut_7_2, 1, 1.0));
			}
			break;
		case 5:
			AssignCommand(oDisciple, ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("KreiaInvis", 0)))));
			break;
		case 6:
			break;
		case 7:
			{
				object oWP_kreia_cut_3_4 = GetObjectByTag("WP_kreia_cut_3_4", 0);
				AssignCommand(oKreia, ActionJumpToObject(oWP_kreia_cut_3_4, 1));
				object oWP_disc_cut_7_3 = GetObjectByTag("WP_disc_cut_7_3", 0);
				AssignCommand(oDisciple, ActionJumpToObject(oWP_disc_cut_7_3, 1));
			}
			break;
		case 8:
			{
				object oWP_kreia_cut_3_5 = GetObjectByTag("WP_kreia_cut_3_5", 0);
				AssignCommand(oKreia, ActionJumpToObject(oWP_kreia_cut_3_5, 1));
				AssignCommand(oDisciple, SetFacingPoint(GetPosition(GetObjectByTag("Kreia2Invis", 0))));
			}
			break;
		case 9:
			break;
		case 10:
			{
				object object25 = GetObjectByTag("WP_kreia_cut_3_3", 0);
				AssignCommand(oKreia, ActionJumpToObject(object25, 1));
			}
			break;
	}
}