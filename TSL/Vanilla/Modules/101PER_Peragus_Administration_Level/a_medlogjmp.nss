void main() {
	object oMEDLOG = GetObjectByTag("MEDLOG", 0);
	AssignCommand(GetPCSpeaker(), ActionJumpToLocation(GetLocation(oMEDLOG)));
}

