// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

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
	
	if (GetGlobalNumber("k_genoharadan") == 50 && GetIsPC(GetEnteringObject()))
		{
			SetGlobalNumber("k_genoharadan", 60);
			
			location lHulas = GetLocation(GetObjectByTag("tat_bh_hulas_wp", 0));
			location lSenni = GetLocation(GetObjectByTag("tat_bh_senni_wp", 0));
			location lBounty = GetLocation(GetObjectByTag("tat_bh_bounty_wp", 0));
			location lThug1 = GetLocation(GetObjectByTag("tat_bh_thug1_wp", 0));
			location lThug2 = GetLocation(GetObjectByTag("tat_bh_thug2_wp", 0));
			location lThug3 = GetLocation(GetObjectByTag("tat_bh_thug3_wp", 0));
			location lThug4 = GetLocation(GetObjectByTag("tat_bh_thug4_wp", 0));
			location lBike1 = GetLocation(GetObjectByTag("tat_bh_bike1_wp", 0));
			location lBike2 = GetLocation(GetObjectByTag("tat_bh_bike2_wp", 0));
			location lBike3 = GetLocation(GetObjectByTag("tat_bh_bike3_wp", 0));
			location lSpeeder1 = GetLocation(GetObjectByTag("tat_bh_speeder1_wp", 0));
			location lSpeeder2 = GetLocation(GetObjectByTag("tat_bh_speeder2_wp", 0));
			
			CreateObject(OBJECT_TYPE_CREATURE, "n_duros001", lHulas, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_senni", lSenni, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_bounty", lBounty, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug1", lThug1, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug2", lThug2, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug3", lThug3, 0);
			CreateObject(OBJECT_TYPE_CREATURE, "tat_thug4", lThug4, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bike1", lBike1, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bike1", lBike2, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bike1", lBike3, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_speeder1", lSpeeder1, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_speeder1", lSpeeder2, 0);
		}
	
	object oPC = GetFirstPC();
	
	if (GetGlobalBoolean("tat_DuneSea") == FALSE)
		{
			SetGlobalBoolean("tat_DuneSea", TRUE);
		}
	
	SandpeopleDisguiseUsable();
	
	object oTusken1 = GetObjectByTag("tat18_tusken", 0);
	object oTusken2 = GetObjectByTag("tat18_tusken02", 0);
	object oTusken3 = GetObjectByTag("tat18_tusken03", 0);
	object oTuskEnc = GetObjectByTag("tat18_tuskenenc", 0);
	
	if (GetTuskenJobGlobal() == TRUE && (GetIsObjectValid(oTusken1) || GetIsObjectValid(oTusken2) || GetIsObjectValid(oTusken3) || GetIsObjectValid(oTuskEnc)))
		{
			oTusken1 = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_ALL);
			
			while (GetIsObjectValid(oTusken1))
				{
					if (GetTag(oTusken1) == "tat18_tusken" || GetTag(oTusken1) == "tat18_tusken02" || GetTag(oTusken1) == "tat18_tusken03" || GetTag(oTusken1) == "tat18_tuskenenc")
						{
							DestroyObject(oTusken1);
						}
					
					oTusken1 = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
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
						if (GetIsObjectValid(oWraid1) == FALSE && GetIsObjectValid(oWraid2) == FALSE && GetIsObjectValid(oWraid3) == FALSE)
							{
								DelayCommand(1.0, SpawnWraidHerdA(lWP_Wraid1));
								SetGlobalNumber("tat_WraidHerd", 1);
							}
						
						break;
					
					case 1:
						if (GetIsObjectValid(oWraid1) == FALSE && GetIsObjectValid(oWraid2) == FALSE && GetIsObjectValid(oWraid3) == FALSE)
							{
								DelayCommand(1.0, SpawnWraidHerdB(lWP_Wraid2));
								SetGlobalNumber("tat_WraidHerd", 2);
							}
						
						break;
					
					case 2:
						if (GetIsObjectValid(oWraid1) == FALSE && GetIsObjectValid(oWraid2) == FALSE && GetIsObjectValid(oWraid3) == FALSE)
							{
								DelayCommand(1.0, SpawnWraidHerdC(lWP_Wraid3));
								SetGlobalNumber("tat_WraidHerd", 0);
							}
						
						break;
				}
		}
}
