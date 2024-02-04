void main() {
	object oWP_650END_PC_0 = GetObjectByTag("WP_650END_PC_0", 0);
	object oWP_650END_0 = GetObjectByTag("WP_650END_0", 0);
	object oPC = GetFirstPC();
	DelayCommand(0.5, AssignCommand(oPC, ActionJumpToObject(oWP_650END_PC_0, 1)));
	if ((GetGlobalBoolean("000_PLAYER_GENDER") == 1)) {
		object oVisasMarr = GetObjectByTag("VisasMarr", 0);
		DelayCommand(0.6, AssignCommand(oVisasMarr, ClearAllActions()));
		DelayCommand(0.6, AssignCommand(oVisasMarr, ActionStartConversation(oPC, "visasend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	else {
		object oDisciple = GetObjectByTag("Disciple", 0);
		DelayCommand(0.6, AssignCommand(oDisciple, ClearAllActions()));
		DelayCommand(0.6, AssignCommand(oDisciple, ActionStartConversation(oPC, "discend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}