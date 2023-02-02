void main() {
	object oPC = GetFirstPC();
	object oMerc_leader = GetObjectByTag("merc_leader", 0);
	AssignCommand(oMerc_leader, ClearAllActions());
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oMerc_leader, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
