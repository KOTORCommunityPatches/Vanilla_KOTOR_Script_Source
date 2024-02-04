void main() {
	object oCs_capt = GetObjectByTag("cs_capt", 0);
	object oWp_cs_capt = GetObjectByTag("wp_cs_capt", 0);
	int int1 = 104;
	DelayCommand(0.4, AssignCommand(oCs_capt, ActionPlayAnimation(int1, 1.0, 0.0)));
	DelayCommand(1.8, AssignCommand(oCs_capt, ActionMoveToObject(oWp_cs_capt, 0, 1.0)));
}