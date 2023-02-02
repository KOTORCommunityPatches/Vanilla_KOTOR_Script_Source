void main() {
	int nParam1 = GetScriptParameter(1);
	object oDisciple = GetObjectByTag("Disciple", 0);
	switch (nParam1) {
		case 1:
			AssignCommand(oDisciple, ActionPlayAnimation(15, 1.0, (-1.0)));
			break;
		case 2:
			{
				object oT3M4 = GetObjectByTag("T3M4", 0);
				object oWP_t3m4_cut_4_1 = GetObjectByTag("WP_t3m4_cut_4_1", 0);
				AssignCommand(oT3M4, ActionMoveToObject(oWP_t3m4_cut_4_1, 0, 1.0));
				AssignCommand(oT3M4, ActionDoCommand(SetFacingPoint(GetPosition(oDisciple))));
				DelayCommand(0.5, AssignCommand(oDisciple, ClearAllActions()));
				DelayCommand(1.5, AssignCommand(oDisciple, SetFacingPoint(GetPosition(oT3M4))));
			}
			break;
		case 3:
			{
				object object7 = GetObjectByTag("T3M4", 0);
				AssignCommand(oDisciple, SetFacingPoint(GetPosition(object7)));
			}
			break;
		case 4:
			{
				object oP_carth001 = CreateObject(1, "p_carth001", GetLocation(GetObjectByTag("WP_carth", 0)), 0);
				AssignCommand(oP_carth001, ActionPlayAnimation(5, 1.0, (-1.0)));
				AssignCommand(oP_carth001, DelayCommand(7.0, DestroyObject(oP_carth001, 0.0, 0, 0.0, 0)));
				DelayCommand(1.0, AssignCommand(oDisciple, SetFacingPoint(GetPosition(oP_carth001))));
			}
			break;
		case 5:
			{
				object object12 = CreateObject(1, "p_carth001", GetLocation(GetObjectByTag("WP_carth", 0)), 0);
				AssignCommand(object12, ActionPlayAnimation(5, 1.0, (-1.0)));
				AssignCommand(object12, DelayCommand(7.0, DestroyObject(object12, 0.0, 0, 0.0, 0)));
				DelayCommand(1.0, AssignCommand(oDisciple, SetFacingPoint(GetPosition(object12))));
			}
			break;
		case 6:
			AssignCommand(oDisciple, SetFacingPoint(GetPosition(GetObjectByTag("T3Invis", 0))));
			break;
	}
}
