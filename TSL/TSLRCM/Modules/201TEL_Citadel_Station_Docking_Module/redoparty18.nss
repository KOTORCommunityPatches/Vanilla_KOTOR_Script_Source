void main() {
	object object1 = SpawnAvailableNPC(0, GetLocation(GetFirstPC()));
	object object4 = SpawnAvailableNPC(6, GetLocation(GetFirstPC()));
	AddPartyMember(0, object1);
	AddPartyMember(6, object4);
}