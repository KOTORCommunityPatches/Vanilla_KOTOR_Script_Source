void main() {
	object object1 = GetItemPossessedBy(GetPartyLeader(), "lspart01");
	DestroyObject(object1, 0.0, 0, 0.0, 0);
	object1 = GetItemPossessedBy(GetPartyLeader(), "lspart02");
	DestroyObject(object1, 0.0, 0, 0.0, 0);
	object1 = GetItemPossessedBy(GetPartyLeader(), "lspart03");
	DestroyObject(object1, 0.0, 0, 0.0, 0);
	SetGlobalNumber("000_LightsaberQuest", 2);
	AddJournalQuestEntry("LightsaberQuest", 50, 0);
}

