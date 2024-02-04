void main() {
	object oSister1 = GetObjectByTag("Sister1", 0);
	object oSister2 = GetObjectByTag("Sister2", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oPC = GetFirstPC();
	object oWP_PC_Atris_End2 = GetWaypointByTag("WP_PC_Atris_End2");
	object oWP_PC_Atris_End3 = GetWaypointByTag("WP_PC_Atris_End3");
	object oWP_Handmaiden_0 = GetWaypointByTag("WP_Handmaiden_0");
	object oWP_Handmaiden_0_2 = GetWaypointByTag("WP_Handmaiden_0_2");
	object oWP_Hand_Atris_1_1 = GetWaypointByTag("WP_Hand_Atris_1_1");
	object oWP_Hand_Atris_2_1 = GetWaypointByTag("WP_Hand_Atris_2_1");
	object oWP_Hand_Atris_1_2 = GetWaypointByTag("WP_Hand_Atris_1_2");
	object oWP_Hand_Atris_2_2 = GetWaypointByTag("WP_Hand_Atris_2_2");
	object oWP_Hand_Atris_1_3 = GetWaypointByTag("WP_Hand_Atris_1_3");
	object oWP_Hand_Atris_2_3 = GetWaypointByTag("WP_Hand_Atris_2_3");
	location location1 = GetLocation(oWP_PC_Atris_End3);
	location location3 = GetLocation(oWP_Handmaiden_0_2);
	location location5 = GetLocation(oWP_Hand_Atris_1_2);
	location location7 = GetLocation(oWP_Hand_Atris_2_2);
	location location9 = GetLocation(oWP_Hand_Atris_1_3);
	location location11 = GetLocation(oWP_Hand_Atris_2_3);
	AssignCommand(oSister1, ActionJumpToObject(oWP_Hand_Atris_1_2, 1));
	AssignCommand(oSister2, ActionJumpToObject(oWP_Hand_Atris_2_2, 1));
	AssignCommand(oHandmaiden, ActionJumpToObject(oWP_Handmaiden_0_2, 1));
	DelayCommand(1.3, AssignCommand(oPC, ActionMoveToLocation(location1, 0)));
	DelayCommand(1.5, AssignCommand(oSister1, ActionMoveToLocation(location9, 0)));
	DelayCommand(1.5, AssignCommand(oSister2, ActionMoveToLocation(location11, 0)));
}