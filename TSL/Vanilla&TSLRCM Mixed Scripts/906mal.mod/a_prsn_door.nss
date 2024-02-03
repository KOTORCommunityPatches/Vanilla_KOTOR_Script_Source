void main() {
	object oMand = GetObjectByTag("Mand", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oVisasmarr = GetObjectByTag("Visasmarr", 0);
	DelayCommand(0.7, AssignCommand(oDisciple, ActionMoveToObject(GetObjectByTag("WP_NPC_exit", 0), 1, 1.0)));
	DelayCommand(0.7, AssignCommand(oHandmaiden, ActionMoveToObject(GetObjectByTag("WP_NPC_exit", 0), 1, 1.0)));
	DelayCommand(1.0, AssignCommand(oMira, ActionMoveToObject(GetObjectByTag("WP_NPC_exit", 0), 1, 1.0)));
	DelayCommand(1.3, AssignCommand(oVisasmarr, ActionMoveToObject(GetObjectByTag("WP_NPC_exit", 0), 1, 1.0)));
	DelayCommand(1.5, AssignCommand(oMand, ActionMoveToObject(GetObjectByTag("WP_NPC_exit", 0), 1, 1.0)));
}

