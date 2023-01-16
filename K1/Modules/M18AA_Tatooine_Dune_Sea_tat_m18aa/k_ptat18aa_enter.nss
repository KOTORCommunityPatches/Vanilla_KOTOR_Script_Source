#include "k_inc_tat"

void SpawnWraidHerdC(location lLocation) {
	
	object oPC = GetFirstPC();
	int nLevel = (GetLevelByPosition(1, oPC) + GetLevelByPosition(2, oPC) + GetLevelByPosition(3, oPC));
	
	if (nLevel > 11)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid23", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid23", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid23", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid23", lLocation, FALSE);
		}
		else
			{
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid03", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid03", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid03", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid03", lLocation, FALSE);
			}
}

void SpawnWraidHerdB(location lLocation) {
	
	object oPC = GetFirstPC();
	int nLevel = (GetLevelByPosition(1, oPC) + GetLevelByPosition(2, oPC) + GetLevelByPosition(3, oPC));
	
	if (nLevel > 11)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid22", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid22", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid22", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid22", lLocation, FALSE);
		}
		else
			{
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid02", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid02", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid02", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid02", lLocation, FALSE);
			}
}

void SpawnWraidHerdA(location lLocation) {
	
	object oPC = GetFirstPC();
	int nLevel = (GetLevelByPosition(1, oPC) + GetLevelByPosition(2, oPC) + GetLevelByPosition(3, oPC));
	
	if (nLevel > 11)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid21", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid21", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid21", lLocation, FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid21", lLocation, FALSE);
		}
		else
			{
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid01", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid01", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid01", lLocation, FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, "tat18_wraid01", lLocation, FALSE);
			}
}

void main() {
	
	if (GetGlobalNumber("k_genoharadan") == 50 && GetIsPC(GetEnteringObject())
		{
			SetGlobalNumber("k_genoharadan", 60);
			
			location location1 = GetLocation(GetObjectByTag("tat_bh_hulas_wp", 0));
			location location3 = GetLocation(GetObjectByTag("tat_bh_senni_wp", 0));
			location location5 = GetLocation(GetObjectByTag("tat_bh_bounty_wp", 0));
			location location7 = GetLocation(GetObjectByTag("tat_bh_thug1_wp", 0));
			location location9 = GetLocation(GetObjectByTag("tat_bh_thug2_wp", 0));
			location location11 = GetLocation(GetObjectByTag("tat_bh_thug3_wp", 0));
			location location13 = GetLocation(GetObjectByTag("tat_bh_thug4_wp", 0));
			location location15 = GetLocation(GetObjectByTag("tat_bh_bike1_wp", 0));
			location location17 = GetLocation(GetObjectByTag("tat_bh_bike2_wp", 0));
			location location19 = GetLocation(GetObjectByTag("tat_bh_bike3_wp", 0));
			location location21 = GetLocation(GetObjectByTag("tat_bh_speeder1_wp", 0));
			location location23 = GetLocation(GetObjectByTag("tat_bh_speeder2_wp", 0));
			
			CreateObject(OBJECT_TYPE_CREATURE, "n_duros001", location1, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_senni", location3, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_bounty", location5, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug1", location7, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug2", location9, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug3", location11, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug4", location13, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bike1", location15, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bike1", location17, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bike1", location19, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_speeder1", location21, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_speeder1", location23, 0);
		}
	
	object oPC = GetFirstPC();
	
	if (GetGlobalBoolean("tat_DuneSea") == FALSE)
		{
			SetGlobalBoolean("tat_DuneSea", TRUE);
		}
	
	SandpeopleDisguiseUsable();
	
	object oSPWarrior1 = GetObjectByTag("tat18_tusken", 0);
	object oSPWarrior2 = GetObjectByTag("tat18_tusken02", 0);
	object oSPWarrior3 = GetObjectByTag("tat18_tusken03", 0);
	object oSPEncounter = GetObjectByTag("tat18_tuskenenc", 0);
	object oTusken;
	
	if ((GetTuskenJobGlobal() == TRUE && GetIsObjectValid(oSPWarrior1)) || GetIsObjectValid(oSPWarrior2) || GetIsObjectValid(oSPWarrior3) || GetIsObjectValid(oSPEncounter))
		{
			oTusken = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_ALL);
			
			while (GetIsObjectValid(oTusken))
				{
					if (GetTag(oTusken) == "tat18_tusken" || GetTag(oTusken) == "tat18_tusken02" || GetTag(oTusken) == "tat18_tusken03" || GetTag(oTusken) == "tat18_tuskenenc")
						{
							DestroyObject(oTusken);
						}
					
					oTusken = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
				}
		}
	
	if (GetEnteringObject() == GetFirstPC())
		{
			object oWraid1 = GetObjectByTag("tat18_wraid01", 0);
			object oWraid2 = GetObjectByTag("tat18_wraid02", 0);
			object oWraid3 = GetObjectByTag("tat18_wraid03", 0);
			object oWP_Wraid1 = GetWaypointByTag("WP_tat18_wraid01_09");
			object oWP_Wraid2 = GetWaypointByTag("WP_tat18_wraid02_09");
			object oWP_Wraid3 = GetWaypointByTag("WP_tat18_wraid03_09");
			location lWP_Wraid1 = GetLocation(oWP_Wraid1);
			location lWP_Wraid2 = GetLocation(oWP_Wraid2);
			location lWP_Wraid3 = GetLocation(oWP_Wraid3);
			
			switch (GetGlobalNumber("tat_WraidHerd"))
				{
					case 0:
						if (GetIsObjectValid(oWraid1) == FALSE) && GetIsObjectValid(oWraid2) == FALSE && GetIsObjectValid(oWraid3) == FALSE)
							{
								DelayCommand(1.0, SpawnWraidHerdA(lWP_Wraid1));
								SetGlobalNumber("tat_WraidHerd", 1);
							}
						
						break;
					
					case 1:
						if (GetIsObjectValid(oWraid1) == FALSE) && GetIsObjectValid(oWraid2) == FALSE && GetIsObjectValid(oWraid3) == FALSE)
							{
								DelayCommand(1.0, SpawnWraidHerdB(lWP_Wraid2));
								SetGlobalNumber("tat_WraidHerd", 2);
							}
						
						break;
					
					case 2:
						if (GetIsObjectValid(oWraid1) == FALSE) && GetIsObjectValid(oWraid2) == FALSE && GetIsObjectValid(oWraid3) == FALSE)
							{
								DelayCommand(1.0, SpawnWraidHerdC(lWP_Wraid3));
								SetGlobalNumber("tat_WraidHerd", 0);
							}
						
						break;
				}
		}
}
