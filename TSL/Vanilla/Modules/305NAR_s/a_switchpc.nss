void main() {
	object oPC = GetFirstPC();
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oVisquis = GetObjectByTag("Visquis", 0);
	object oMira = GetObjectByTag("Mira", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AssignCommand(oHanharr, ClearAllActions());
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_JMP_PC_HAN", 0), 0));
	}
	if ((nParam1 == 1)) {
		AssignCommand(oMira, ClearAllActions());
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_JMP_PC_MIRA", 0), 0));
	}
	if ((nParam1 == 2)) {
		AssignCommand(oMira, ClearAllActions());
		AssignCommand(oHanharr, ClearAllActions());
		AssignCommand(oPC, ClearAllActions());
		DelayCommand(0.5, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_PC_VENT_0", 0), 0)));
	}
}

