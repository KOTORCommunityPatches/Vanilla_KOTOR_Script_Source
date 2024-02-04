void main() {
	if (GetIsObjectValid(GetObjectByTag("kreia", 0))) {
		DestroyObject(GetObjectByTag("kreia", 0), 0.0, 0, 0.0, 0);
	}
	AddPartyMember(8, GetObjectByTag("T3M4", 0));
	if (IsAvailableCreature(7)) {
		AddPartyMember(7, GetObjectByTag("Mira", 0));
	}
	if (IsAvailableCreature(10)) {
		AddPartyMember(10, GetObjectByTag("Hanharr", 0));
	}
}