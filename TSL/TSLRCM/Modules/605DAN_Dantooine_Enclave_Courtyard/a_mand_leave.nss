void main() {
	object oWp_mand_exit = GetObjectByTag("wp_mand1_jump", 0);
	ClearAllActions();
	ActionJumpToObject(oWp_mand_exit, 1);
	oWp_mand_exit = GetObjectByTag("wp_mand2_jump", 0);
	object oMand_merc2 = GetObjectByTag("mand_merc2", 0);
	AssignCommand(oMand_merc2, ClearAllActions());
	AssignCommand(oMand_merc2, ActionJumpToObject(oWp_mand_exit, 1));
	oWp_mand_exit = GetObjectByTag("wp_mand_exit", 0);
	DelayCommand(0.4, ActionForceMoveToObject(oWp_mand_exit, 1, 1.0, 30.0));
	DelayCommand(0.4, AssignCommand(oMand_merc2, ActionForceMoveToObject(oWp_mand_exit, 1, 1.0, 30.0)));
}