struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	if ((!GetIsObjectValid(oDarthSion))) {
		AurPostString("Darth Sion isn't here, don't bother with the rest of the cut scene", 5, 7, 10.0);
		return;
	}
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	object oAtton = GetObjectByTag("atton", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	if (((!GetIsObjectValid(oAtton)) || (!GetIsObjectValid(oKreia)))) {
		AurPostString("No Atton or Kreia, don't bother with the rest of the cut scene", 5, 7, 10.0);
		return;
	}
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oAtton, ClearAllActions());
			AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_pc", 0))));
			AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_npc2", 0))));
			AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_npc3", 0))));
			object oWP_SION_PC1 = GetObjectByTag("WP_SION_PC1", 0);
			object oWP_SION_PC2 = GetObjectByTag("WP_SION_PC2", 0);
			object oWP_SION_PC3 = GetObjectByTag("WP_SION_PC3", 0);
			AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(oWP_SION_PC1), 0, 30.0));
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_pc_look", 0)));
								;
;
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
	}
}

