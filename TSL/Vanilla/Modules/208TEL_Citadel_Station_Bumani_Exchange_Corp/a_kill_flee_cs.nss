void main() {
	int nParam1 = GetScriptParameter(1);
	object oRod_killer = GetObjectByTag("rod_killer", 0);
	object oDev_killer = GetObjectByTag("dev_killer", 0);
	if (((!GetIsObjectValid(oRod_killer)) && (!GetIsObjectValid(oDev_killer)))) {
		AurPostString("ERROR: Invalid objects for killer cutscene.", 5, 15, 10.0);
		return;
	}
	switch (nParam1) {
		case 1:
			{
				object oWP_rod_walk = GetObjectByTag("WP_rod_walk", 0);
				object oWP_dev_walk = GetObjectByTag("WP_dev_walk", 0);
				if ((GetIsObjectValid(oWP_rod_walk) && GetIsObjectValid(oWP_dev_walk))) {
					AssignCommand(oRod_killer, ClearAllActions());
					AssignCommand(oDev_killer, ClearAllActions());
					AssignCommand(oRod_killer, ActionForceMoveToLocation(GetLocation(oWP_rod_walk), 0, 30.0));
					AssignCommand(oDev_killer, ActionForceMoveToLocation(GetLocation(oWP_dev_walk), 0, 30.0));
				}
				else {
					AurPostString("ERROR: Invalid Waypoints for killer cutscene.", 5, 15, 10.0);
				}
			}
			break;
		case 2:
			break;
		case 3:
			{
				object oWP_rod_run = GetObjectByTag("WP_rod_run", 0);
				object oWP_dev_run = GetObjectByTag("WP_dev_run", 0);
				if ((GetIsObjectValid(oWP_rod_run) && GetIsObjectValid(oWP_dev_run))) {
					AssignCommand(oRod_killer, ClearAllActions());
					AssignCommand(oDev_killer, ClearAllActions());
					AssignCommand(oRod_killer, ActionForceMoveToLocation(GetLocation(oWP_rod_run), 1, 30.0));
					AssignCommand(oDev_killer, ActionForceMoveToLocation(GetLocation(oWP_dev_run), 1, 30.0));
					DelayCommand(5.0, DestroyObject(oRod_killer, 0.0, 0, 0.0, 0));
					DelayCommand(5.0, DestroyObject(oDev_killer, 0.0, 0, 0.0, 0));
				}
				else {
					AurPostString("ERROR: Invalid Waypoints for killer cutscene.", 5, 15, 10.0);
				}
			}
			break;
		default:
			AurPostString("ERROR: with killer fleeing cutscene", 5, 15, 10.0);
			break;
	}
}
