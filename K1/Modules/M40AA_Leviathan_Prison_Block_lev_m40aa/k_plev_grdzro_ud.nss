void main() {
	
	int nEvent = GetUserDefinedEventNumber();
	int nCnt;
	object oNearest;
	
	switch (nEvent)
		{
			case 2000:
				nCnt = 1;
				oNearest = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF, 1, -1, -1, -1, -1);
				
				while (GetIsObjectValid(oNearest) && GetDistanceBetween(OBJECT_SELF, oNearest) < 15.0)
					{
						DestroyObject(oNearest);
						nCnt++;
						
						oNearest = GetNearestCreature(CREATURE_TYPE_REPUTATION, REPUTATION_TYPE_ENEMY, OBJECT_SELF, nCnt, -1, -1, -1, -1);
					}
		}
}
