void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	switch (nParam1) {
		case 0:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_chk_droid", 0), 0, 1.0));
			AssignCommand(oPC, ActionPlayAnimation(33, 1.0, 1.0));
			break;
	}
}
