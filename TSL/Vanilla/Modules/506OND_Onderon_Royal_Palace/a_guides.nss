void main() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	object object2;
	string string1;
	object oWp_tele_pc_beg = GetObjectByTag("wp_tele_pc_beg", 0);
	object oWp_tele_npc1_beg = GetObjectByTag("wp_tele_npc1_beg", 0);
	object oWp_tele_npc2_beg = GetObjectByTag("wp_tele_npc2_beg", 0);
	object oWp_tele_pc_end = GetObjectByTag("wp_tele_pc_end", 0);
	object oWp_tele_npc1_end = GetObjectByTag("wp_tele_npc1_end", 0);
	object oWp_tele_npc2_end = GetObjectByTag("wp_tele_npc2_end", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object17 = GetPartyMemberByIndex(1);
	object object19 = GetPartyMemberByIndex(2);
	switch (nParam1) {
		case 0:
			object2 = GetObjectByTag("wp_tele_pc_end", 0);
			DelayCommand(0.5, ActionMoveToObject(object2, 0, 1.0));
			DelayCommand(0.7, AssignCommand(GetFirstPC(), ActionMoveToObject(object2, 0, 1.0)));
			break;
		case 1:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
			if (GetIsObjectValid(oNPC)) {
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWp_tele_pc_end)));
			}
			if (GetIsObjectValid(object17)) {
				AssignCommand(object17, ClearAllActions());
				AssignCommand(object17, ActionJumpToLocation(GetLocation(oWp_tele_npc1_end)));
			}
			if (GetIsObjectValid(object19)) {
				AssignCommand(object19, ClearAllActions());
				AssignCommand(object19, ActionJumpToLocation(GetLocation(oWp_tele_npc2_end)));
			}
			string1 = (("wp_tele_" + GetTag(OBJECT_SELF)) + "_end");
			object2 = GetObjectByTag(string1, 0);
			ClearAllActions();
			ActionJumpToObject(object2, 1);
			break;
		case 2:
			object2 = GetObjectByTag("wp_tele_pc_beg", 0);
			DelayCommand(0.5, ActionMoveToObject(object2, 0, 1.0));
			DelayCommand(0.7, AssignCommand(GetFirstPC(), ActionMoveToObject(object2, 0, 1.0)));
			break;
		case 3:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
			if (GetIsObjectValid(oNPC)) {
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWp_tele_pc_beg)));
			}
			if (GetIsObjectValid(object17)) {
				AssignCommand(object17, ClearAllActions());
				AssignCommand(object17, ActionJumpToLocation(GetLocation(oWp_tele_npc1_beg)));
			}
			if (GetIsObjectValid(object19)) {
				AssignCommand(object19, ClearAllActions());
				AssignCommand(object19, ActionJumpToLocation(GetLocation(oWp_tele_npc2_beg)));
			}
			string1 = (("wp_tele_" + GetTag(OBJECT_SELF)) + "_beg");
			object2 = GetObjectByTag(string1, 0);
			ClearAllActions();
			ActionJumpToObject(object2, 1);
	}
}
