void main() {
	object oMira = GetObjectByTag("Mira", 0);
	AssignCommand(oMira, ActionJumpToObject(GetObjectByTag("WP_MIRA_END2_0", 0), 0));
	DelayCommand(0.5, ActionStartConversation(oMira, "miraend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

