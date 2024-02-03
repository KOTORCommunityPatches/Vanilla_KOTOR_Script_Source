void main() {
	AddAvailableNPCByObject(10, GetObjectByTag("Hanharr", 0));
	SetGlobalNumber("000_Hanharr_Joined", 1);
	AddPartyMember(10, GetObjectByTag("Hanharr", 0));
}

