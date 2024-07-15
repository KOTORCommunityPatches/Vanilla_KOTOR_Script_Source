void main() {
	SetGlobalNumber("101PER_Kreia_Joined", 1);
	AddAvailableNPCByObject(6, GetObjectByTag("kreia", 0));
	AddPartyMember(6, GetObjectByTag("kreia", 0));
}

