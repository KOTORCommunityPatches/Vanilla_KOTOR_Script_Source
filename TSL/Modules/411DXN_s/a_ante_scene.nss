void main() {
	object oNPC;
	object oWp_ante_mira;
	oNPC = GetPartyMemberByIndex(0);
	oWp_ante_mira = GetObjectByTag("wp_ante_pc", 0);
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionJumpToObject(oWp_ante_mira, 1));
	oNPC = GetPartyMemberByIndex(1);
	oWp_ante_mira = GetObjectByTag("wp_ante_mira", 0);
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionJumpToObject(oWp_ante_mira, 1));
}

