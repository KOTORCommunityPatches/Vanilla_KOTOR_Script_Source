void main() {
	
	object oPM0_WP = GetWaypointByTag("tat17_helenawp1");
	object oPM1_WP = GetWaypointByTag("tat17_helenawp2");
	object oPM2_WP = GetWaypointByTag("tat17_helenawp3");
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	AssignCommand(oPM0, JumpToObject(oPM0_WP));
	AssignCommand(oPM1, JumpToObject(oPM1_WP));
	AssignCommand(oPM2, JumpToObject(oPM2_WP));
}