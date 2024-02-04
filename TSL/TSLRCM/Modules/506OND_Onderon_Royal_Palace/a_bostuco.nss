void main() {
	object oRo_plat;
	object oWp_ls_plat;
	oRo_plat = GetObjectByTag("bostuco", 0);
	oWp_ls_plat = GetObjectByTag("wp_ls_bostuco", 0);
	AssignCommand(oRo_plat, ActionMoveToObject(oWp_ls_plat, 0, 1.0));
	oRo_plat = GetObjectByTag("ro_plat", 0);
	oWp_ls_plat = GetObjectByTag("wp_ls_plat", 0);
	DelayCommand(0.3, AssignCommand(oRo_plat, ActionMoveToObject(oWp_ls_plat, 0, 1.0)));
}