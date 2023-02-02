void main() {
	object oPC = GetFirstPC();
	object oAtton = GetObjectByTag("Atton", 0);
	object oWP_ATTONCAGE = GetWaypointByTag("WP_ATTONCAGE");
	location location1 = GetLocation(oWP_ATTONCAGE);
	if ((GetGlobalNumber("101PER_Kreia_Telepath") == 1)) {
		AurPostString("k_attontlk: stop! start talking!", 5, 5, 5.0);
		AssignCommand(oPC, ClearAllActions());
		DelayCommand(0.2, AssignCommand(oAtton, ClearAllActions()));
		DelayCommand(0.2, AssignCommand(oAtton, ActionStartConversation(oPC, "101atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
