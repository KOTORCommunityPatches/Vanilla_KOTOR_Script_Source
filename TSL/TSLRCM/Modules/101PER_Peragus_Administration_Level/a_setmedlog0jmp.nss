void main() {
	object oWP_MEDOFF = GetObjectByTag("WP_MEDOFF", 0);
	object oMedOff = GetObjectByTag("MedOff", 0);
	AssignCommand(oMedOff, ActionJumpToLocation(GetLocation(oWP_MEDOFF)));
	SetGlobalNumber("101PER_Med_Log", 0);
}