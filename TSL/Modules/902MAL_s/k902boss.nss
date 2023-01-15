void main() {
	object oPC = GetPartyLeader();
	if ((GetEnteringObject() == oPC)) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		oPC = GetFirstPC();
		object object5 = GetNextPC();
		object object7 = GetNextPC();
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_BOSS_PC1", 0), 1));
		AssignCommand(object5, ClearAllActions());
		AssignCommand(object5, ActionJumpToObject(GetObjectByTag("WP_BOSS_PC2", 0), 1));
		AssignCommand(object7, ClearAllActions());
		AssignCommand(object7, ActionJumpToObject(GetObjectByTag("WP_BOSS_PC3", 0), 1));
		object o902boss = GetObjectByTag("902boss", 0);
		if (GetIsObjectValid(o902boss)) {
			AssignCommand(o902boss, ActionStartConversation(oPC, "902boss", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			AurPostString("k902boss: INVIS BOSS PLACEABLE MISSING!", 5, 5, 5.0);
		}
	}
}

