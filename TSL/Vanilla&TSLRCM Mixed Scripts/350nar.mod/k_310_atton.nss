void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	SwitchPlayerCharacter(0);
	SpawnAvailableNPC(1, GetLocation(oEntering));
	AddPartyMember(1, GetObjectByTag("BaoDur", 0));
	AssignCommand(GetObjectByTag("BaoDur", 0), ActionStartConversation(GetFirstPC(), "chose", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

