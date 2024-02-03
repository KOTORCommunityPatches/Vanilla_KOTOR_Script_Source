void main() {
	if (IsNPCPartyMember(6)) {
		RemoveNPCFromPartyToBase(6);
	}
	if ((!IsNPCPartyMember(0))) {
		object object1 = SpawnAvailableNPC(0, GetLocation(GetFirstPC()));
		AddPartyMember(0, object1);
	}
}

