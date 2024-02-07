void main() {
	AddAvailableNPCByObject(11, GetObjectByTag("Disciple", 0));
	SetGlobalNumber("000_Disciple_Joined", 1);
	AddPartyMember(11, GetObjectByTag("Disciple", 0));
}

