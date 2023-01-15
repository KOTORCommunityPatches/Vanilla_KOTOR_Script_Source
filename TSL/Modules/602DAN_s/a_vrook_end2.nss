void main() {
	object oPC = GetFirstPC();
	object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
	ExecuteScript("a_clean_up", oPC, 0xFFFFFFFF);
	DelayCommand(0.1, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(0.1, AssignCommand(oNpc_vrook, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("npc_vrook", 0), ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

