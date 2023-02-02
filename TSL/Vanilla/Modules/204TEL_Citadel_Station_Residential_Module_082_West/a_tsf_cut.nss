void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oTsf_med = GetObjectByTag("tsf_med", 0);
				if (GetIsObjectValid(oTsf_med)) {
				object oWP_tsf_run = GetObjectByTag("WP_tsf_run", 0);
				if (GetIsObjectValid(oWP_tsf_run)) {
					AssignCommand(oTsf_med, ClearAllActions());
					AssignCommand(oTsf_med, ActionForceMoveToLocation(GetLocation(oWP_tsf_run), 1, 30.0));
				}
				}
			}
			break;
		case 2:
			{
				object object5 = GetObjectByTag("tsf_med", 0);
				if (GetIsObjectValid(object5)) {
					ChangeToStandardFaction(object5, 1);
				}
			}
			break;
		default:
			AurPostString("ERROR: TSF office attack cut scene!", 5, 15, 10.0);
			break;
	}
}
