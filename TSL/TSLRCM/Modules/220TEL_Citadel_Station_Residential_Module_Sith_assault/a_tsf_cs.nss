void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
			{
				object oPC = GetFirstPC();
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(GetObjectByTag("WP_player_1", 0)), 1, 30.0));
			}
			break;
	}
}