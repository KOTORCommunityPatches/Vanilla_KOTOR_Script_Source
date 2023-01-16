void main() {
	object oPC = GetFirstPC();
	object oMira = GetObjectByTag("Mira", 0);
	DelayCommand(0.5, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_PC_MIRA_APT_0", 0), 0)));
	DelayCommand(0.5, AssignCommand(oMira, ActionJumpToObject(GetObjectByTag("WP_MIRA_MIRA_APT_0", 0), 0)));
}

