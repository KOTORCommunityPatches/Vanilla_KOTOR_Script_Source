void main() {
	int nParam1 = GetScriptParameter(1);
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oKreia, ActionPlayAnimation(0, 1.0, (-1.0)));
			break;
		case 1:
			{
				object oWP_kreia_cut_4 = GetObjectByTag("WP_kreia_cut_4", 0);
				AssignCommand(oDisciple, ActionDoCommand(SetFacingPoint(GetPosition(oWP_kreia_cut_4))));
				AssignCommand(oDisciple, ActionWait(1.2));
				AssignCommand(oDisciple, ActionMoveToObject(oWP_kreia_cut_4, 0, 1.0));
				AssignCommand(oDisciple, ActionPlayAnimation(100, 1.0, 0.0));
				AssignCommand(oDisciple, ActionPlayAnimation(101, 1.0, 0.0));
				AssignCommand(oDisciple, ActionWait(1.0));
			}
			break;
		case 2:
			{
				object oWP_disc_cut_6 = GetObjectByTag("WP_disc_cut_6", 0);
				AssignCommand(oDisciple, ActionWait(0.5));
				AssignCommand(oDisciple, ActionMoveToObject(oWP_disc_cut_6, 0, 1.0));
			}
			break;
		case 3:
			AssignCommand(oDisciple, ClearAllActions());
			AssignCommand(oDisciple, ActionWait(2.1));
			AssignCommand(oDisciple, ActionDoCommand(SetFacingPoint(GetPosition(oKreia))));
			AssignCommand(oDisciple, ActionDoCommand(AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("WP_kreia_cut_3_3", 0), 1))));
			break;
	}
}

