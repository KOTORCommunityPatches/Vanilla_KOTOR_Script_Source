void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oOnd_soldier_ster;
	switch (nParam1) {
		case 0:
			oOnd_soldier_ster = GetObjectByTag("ond_soldier_ster", 0);
			AssignCommand(oOnd_soldier_ster, ActionJumpToObject(GetObjectByTag("wp_guard_south", 0), 1));
			{
				int nParam2 = GetScriptParameter(2);
				SetLocalBoolean(OBJECT_SELF, nParam2, 0);
			}
			break;
		case 1:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_turret_pc1", 0), 1));
			AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_turret_pc2", 0), 0, 1.0));
			PlaySound("MGS_PwrupLong");
			DelayCommand(2.0, PlaySound("MGS_PwrUp_03"));
			break;
		case 2:
			break;
	}
}