int MookCount() {
	int nCount = 0;
	object nMook = GetFirstObjectInArea(OBJECT_SELF, OBJECT_TYPE_CREATURE);
	
	while (GetIsObjectValid(nMook))
		{
			if (GetStandardFaction(nMook) == STANDARD_FACTION_HOSTILE_1 || GetStandardFaction(nMook) == STANDARD_FACTION_HOSTILE_2 && !GetIsDead(nMook) && GetRacialType(nMook) != RACIAL_TYPE_DROID)
				{
					nCount = nCount + 1;
				}
			
			nMook = GetNextObjectInArea(OBJECT_SELF, OBJECT_TYPE_CREATURE);
		}
	
	return nCount;
}

void main() {
	
	int nSpawn = GetGlobalBoolean("K_STA_SPAWNER");
	int nHorde = GetGlobalNumber("K_STA_HORDE");
	object oPM0 = GetPartyMemberByIndex(0);
	int nRand = (Random(12) + 1);
	string sTag;
	
	if (nRand == 1)
		{
			sTag = "sta45b_trooper";
		}
		else if (nRand == 2)
			{
				sTag = "sta45b_troope001";
			}
			else if (nRand == 3 || nRand == 4)
				{
					sTag = "k_sta_sithtrpenc";
				}
				else if (nRand == 5 || nRand == 6)
					{
						sTag = "sta45b_appren001";
					}
					else if (nRand == 7 || nRand == 8)
						{
							sTag = "sta45b_appren002";
						}
						else if (nRand == 9)
							{
								sTag = "k_sta_sithtrp001";
							}
							else if (nRand == 10)
								{
									sTag = "sta45b_apprentic";
								}
								else
									{
										sTag = "k_sta_darkjedien";
									}
	
	if (nSpawn == TRUE && !GetIsInConversation(oPM0))
		{
			if (MookCount() <= 4)
				{
					if (nHorde < 9)
						{
							object oSpawner1 = GetNearestObjectByTag("STA_HORDE_SPAWN", oPM0, 1);
							object oSpawner2 = GetNearestObjectByTag("STA_HORDE_SPAWN", oPM0, 2);
							location lSpawner2 = GetLocation(oSpawner2);
							
							SetGlobalNumber("K_STA_HORDE", (nHorde + 1));
							CreateObject(OBJECT_TYPE_CREATURE, sTag, lSpawner2);
						}
				}
		}
}
