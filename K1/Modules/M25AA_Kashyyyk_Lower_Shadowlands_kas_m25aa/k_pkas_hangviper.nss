void main() {
	
	object oPC = GetFirstPC();
	object oBody = GetItemPossessedBy(oPC, "kas25_kinrathbod");
	object oMarker = GetObjectByTag("kas25_ritualmark", 0);
	object oVine = GetObjectByTag("kas25_ritualvine", 0);
	object oWP_Vine = GetWaypointByTag("kas25_vinespawn");
	object oWP_Spawn = GetWaypointByTag("kas25_wp_wraid");
	location lVine = GetLocation(oWP_Vine);
	location lSpawn = GetLocation(oWP_Spawn);
	
	if (GetJournalEntry("kas23_mainwookplot") < 60)
		{
			AddJournalQuestEntry("kas23_mainwookplot", 55, FALSE);
		}
		else
			{
				AddJournalQuestEntry("kas23_mainwookplot", 85, FALSE);
			}
	
	DestroyObject(oBody);
	DestroyObject(oVine);
	
	CreateObject(OBJECT_TYPE_PLACEABLE, "kas25_vipervine", lVine, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "kas25_wraid", lSpawn, 0);
}