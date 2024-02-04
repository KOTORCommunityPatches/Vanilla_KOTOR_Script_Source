void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oKreia = GetObjectByTag("Kreia", 0);
				object oWP_kreia_cut_5_1 = GetObjectByTag("WP_kreia_cut_5_1", 0);
				AssignCommand(oKreia, ActionMoveToObject(oWP_kreia_cut_5_1, 0, 1.0));
			}
			break;
		case 2:
			{
				object oDisciple = GetObjectByTag("Disciple", 0);
				AssignCommand(oDisciple, ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("HoloInvis", 0)))));
			}
			break;
	}
}