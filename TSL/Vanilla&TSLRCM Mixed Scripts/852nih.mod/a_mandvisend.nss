void main() {
	AddAvailableNPCByObject(2, GetObjectByTag("Mand", 0));
	AddPartyMember(2, GetObjectByTag("Mand", 0));
	AddAvailableNPCByObject(9, GetObjectByTag("VisasMarr", 0));
	AddPartyMember(9, GetObjectByTag("VisasMarr", 0));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

