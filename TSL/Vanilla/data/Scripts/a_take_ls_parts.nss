// takes player's lightsaber parts.

void main()
{

    object oItem = GetItemPossessedBy (GetPartyLeader(),"lspart01");
    DestroyObject(oItem);
    oItem = GetItemPossessedBy (GetPartyLeader(),"lspart02");
    DestroyObject(oItem);
    oItem = GetItemPossessedBy (GetPartyLeader(),"lspart03");
    DestroyObject(oItem);

    SetGlobalNumber("000_LightsaberQuest",2);
    AddJournalQuestEntry("LightsaberQuest",50);

}
