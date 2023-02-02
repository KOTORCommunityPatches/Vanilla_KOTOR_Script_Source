void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oWp_entry_tgone;
	object oFf_outer;
	switch (nParam1) {
		case 0:
			oFf_outer = GetObjectByTag("ff_outer", 0);
			AssignCommand(oFf_outer, ClearAllActions());
			AssignCommand(oFf_outer, DelayCommand(2.0, AssignCommand(oFf_outer, ActionCloseDoor(oFf_outer))));
			SetLocked(oFf_outer, 1);
			oWp_entry_tgone = GetWaypointByTag("wp_entry_pc");
			AssignCommand(oPC, ActionMoveToObject(oWp_entry_tgone, 1, 1.0));
			break;
		case 1:
			oWp_entry_tgone = GetWaypointByTag("wp_entry_tobin");
			ActionMoveToObject(oWp_entry_tgone, 0, 1.0);
			break;
		case 2:
			oWp_entry_tgone = GetWaypointByTag("wp_entry_tgone");
			ActionMoveToObject(oWp_entry_tgone, 0, 1.0);
			break;
	}
}
