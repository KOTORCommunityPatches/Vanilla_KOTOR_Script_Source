void main() {
	AddAvailableNPCByObject(0, GetObjectByTag("atton", 0));
	AddPartyMember(0, GetObjectByTag("atton", 0));
	SetGlobalNumber("101PER_Atton_Joined", 1);
}

