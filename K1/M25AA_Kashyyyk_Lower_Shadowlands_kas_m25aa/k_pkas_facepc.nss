void main() {
	
	object oPC = GetFirstPC();
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_PM0 = GetWaypointByTag("kas25_wp_compu1");
	object oWP_PM1 = GetWaypointByTag("kas25_wp_compu2");
	object oWP_PM2 = GetWaypointByTag("kas25_wp_compu3");
	
	AssignCommand(oPM0, JumpToObject(oWP_PM0, 1));
	AssignCommand(oPM1, JumpToObject(oWP_PM1, 1));
	AssignCommand(oPM2, JumpToObject(oWP_PM2, 1));
	
	DelayCommand(0.5, SetFacingPoint(GetPosition(oPC)));
}
