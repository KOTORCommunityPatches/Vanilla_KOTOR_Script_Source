void main() {
	IncrementGlobalNumber("650DAN_Masters_Dead", 1);
	int nGlobal = GetGlobalNumber("650DAN_Masters_Dead");
	if ((nGlobal == 2)) {
		object oKreia = GetObjectByTag("Kreia", 0);
		object oPC = GetFirstPC();
		if (GetIsObjectValid(oKreia)) {
			SetLockOrientationInDialog(oPC, 1);
			if (IsAvailableCreature(4)) {
				SpawnAvailableNPC(4, GetLocation(GetObjectByTag("WP_PC_WALK_2", 0)));
			}
			AssignCommand(oPC, ActionStartConversation(oKreia, "krealone", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}