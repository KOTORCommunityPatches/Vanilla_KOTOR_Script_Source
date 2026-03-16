void main() {
	int nParam1 = GetScriptParameter(1);
	object oNPC = GetFirstPC();
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc_end1", 0), 1));
			DelayCommand(0.5, AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("sp_pc_end2", 0), 1, 1.0, 30.0)));
			oNPC = GetPartyMemberByIndex(1);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc1_end1", 0), 1));
			DelayCommand(0.5, AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("sp_pc1_end2", 0), 1, 1.0, 30.0)));
			oNPC = GetPartyMemberByIndex(2);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc2_end1", 0), 1));
			DelayCommand(0.5, AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("sp_pc2_end2", 0), 1, 1.0, 30.0)));
			{
				object oDarthSion = GetObjectByTag("DarthSion", 0);
				AssignCommand(oDarthSion, JumpToObject(GetObjectByTag("wp_sion_jump", 0), 1));
				AssignCommand(oDarthSion, ActionForceMoveToObject(GetObjectByTag("wp_sion_end", 0), 0, 1.0, 30.0));
				object oSithassassin = CreateObject(1, "sithassassin", GetLocation(GetObjectByTag("wp_ass1_jump", 0)), 0);
				DelayCommand(0.5, AssignCommand(oSithassassin, ActionForceMoveToObject(GetObjectByTag("wp_assassin1_end", 0), 1, 1.0, 30.0)));
				object object19 = CreateObject(1, "sithassassin", GetLocation(GetObjectByTag("wp_ass2_jump", 0)), 0);
				DelayCommand(0.5, AssignCommand(object19, ActionForceMoveToObject(GetObjectByTag("wp_assassin2_end", 0), 1, 1.0, 30.0)));
			}
			break;
		case 1:
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc_end2", 0), 1));
			oNPC = GetPartyMemberByIndex(1);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc1_end2", 0), 1));
			oNPC = GetPartyMemberByIndex(2);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("sp_pc2_end2", 0), 1));
			break;
		case 2:
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("wp_pc_end_move2", 0), 1, 1.0, 30.0));
			oNPC = GetPartyMemberByIndex(1);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("wp_pc1_end_move2", 0), 1, 1.0, 30.0));
			oNPC = GetPartyMemberByIndex(2);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionForceMoveToObject(GetObjectByTag("wp_pc2_end_move2", 0), 1, 1.0, 30.0));
			break;
		case 3:
			break;
	}
}

