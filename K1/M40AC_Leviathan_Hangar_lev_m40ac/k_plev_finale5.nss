void main() {
	
	SetGlobalNumber("K_KOTOR_MASTER", 20);
	SetGlobalNumber("K_CAPTURED_LEV", 10);
	
	SetLocked(GetObjectByTag("lev40_hangar", 0), FALSE);
	
	RemoveAvailableNPC(NPC_BASTILA);
	AddPartyMember(NPC_CARTH, GetObjectByTag("carth", 0));
}
