void main() {
	if ((GetPartyMemberCount() < 2)) {
		return;
	}
	int int2 = GetRunScriptVar();
	if (((int2 < 0) || (int2 > 2))) {
		AurPostString("a_gbl_react: Invalid parameter value passed in.", 10, 15, 15.0);
		return;
	}
	SetGlobalNumber("000_React", int2);
	object oInvis_reaction = GetObjectByTag("invis_reaction", 0);
	if ((!GetIsObjectValid(oInvis_reaction))) {
		AurPostString("a_gbl_react: Unable to locate 'invis_reaction' object.", 10, 20, 15.0);
		return;
	}
	object oPC = GetFirstPC();
	AssignCommand(oInvis_reaction, ClearAllActions());
	DelayCommand(3.0, AssignCommand(oInvis_reaction, ActionStartConversation(oPC, "000react", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

