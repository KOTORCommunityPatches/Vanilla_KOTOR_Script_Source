void main() {
	int nParam1 = GetScriptParameter(1);
	object oTerena_guard = GetObjectByTag("terena_guard", 0);
	object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
	object oNpc_berun = GetObjectByTag("npc_berun", 0);
	switch (nParam1) {
		case 0:
			AssignCommand(oTerena_guard, ClearAllActions());
			AssignCommand(oTerena_guard, ActionForceMoveToObject(GetObjectByTag("wp_guard2", 0), 0, 1.0, 30.0));
			break;
		case 1:
			AssignCommand(oTerena_guard, ClearAllActions());
			AssignCommand(oTerena_guard, ActionForceMoveToObject(GetObjectByTag("wp_guard1", 0), 0, 1.0, 30.0));
			AssignCommand(oNpc_zherron, ClearAllActions());
			AssignCommand(oNpc_zherron, JumpToObject(GetObjectByTag("wp_chguard_zherron1", 0), 1));
			DelayCommand(0.5, AssignCommand(oNpc_zherron, ActionForceMoveToObject(GetObjectByTag("wp_chguard_zherron2", 0), 0, 1.0, 30.0)));
			AssignCommand(oNpc_berun, ClearAllActions());
			AssignCommand(oNpc_berun, JumpToObject(GetObjectByTag("wp_chguard_berun1", 0), 1));
			DelayCommand(0.5, AssignCommand(oNpc_berun, ActionForceMoveToObject(GetObjectByTag("wp_chguard_berun2", 0), 0, 1.0, 30.0)));
			break;
		case 2:
			SetPartyLeader(0xFFFFFFFF);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), JumpToObject(GetObjectByTag("wp_chguard_pc", 0), 1));
			AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
			AssignCommand(GetPartyMemberByIndex(1), JumpToObject(GetObjectByTag("wp_chguard_npc2", 0), 1));
			AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
			AssignCommand(GetPartyMemberByIndex(2), JumpToObject(GetObjectByTag("wp_chguard_npc3", 0), 1));
			break;
		case 3:
			AssignCommand(oNpc_zherron, ClearAllActions());
			AssignCommand(oNpc_zherron, ActionForceMoveToObject(GetObjectByTag("wp_chguard_zherron3", 0), 0, 1.0, 30.0));
			break;
		case 4:
			DelayCommand(2.0, AssignCommand(oNpc_berun, ClearAllActions()));
			DelayCommand(2.0, AssignCommand(oNpc_berun, ActionForceMoveToObject(GetObjectByTag("wp_chguard_berun3", 0), 0, 1.0, 30.0)));
			break;
		case 5:
			AssignCommand(oNpc_zherron, ClearAllActions());
			AssignCommand(oNpc_zherron, JumpToObject(GetObjectByTag("wp_chguard_zherron3", 0), 1));
			break;
		case 6:
			AssignCommand(oNpc_berun, ClearAllActions());
			AssignCommand(oNpc_berun, JumpToObject(GetObjectByTag("wp_chguard_berun3", 0), 1));
			break;
	}
}
