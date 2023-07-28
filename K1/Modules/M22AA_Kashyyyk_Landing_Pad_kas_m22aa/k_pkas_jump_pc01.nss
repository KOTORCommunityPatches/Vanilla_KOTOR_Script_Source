void main() {
	
	object oPC = GetFirstPC();
	object oWP = GetWaypointByTag("kas22ab_kas22aa");
	
	AssignCommand(oPC, JumpToObject(oWP, TRUE));
}
