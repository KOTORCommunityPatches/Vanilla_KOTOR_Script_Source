void main() {
	object oAtton = GetObjectByTag("atton", 0);
	if (GetIsObjectValid(oAtton)) {
		AddPartyMember(0, oAtton);
	}
	object oKreia = GetObjectByTag("kreia", 0);
	if (GetIsObjectValid(oKreia)) {
		AddPartyMember(6, oKreia);
	}
}

