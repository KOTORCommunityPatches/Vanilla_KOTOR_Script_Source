//#include "k_inc_kor" // Presumably the original used a planetary include, but it doesn't exist in the game files.
#include "k_inc_utility"
#include "k_inc_debug"

void SetFlag(int intParam1) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, intParam1);
}

int GetFlag() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetEnteringObject() == oPC)
		{
			RevealMap();
			
			object oDoor = GetObjectByTag("k33b_dor_academy", 0);
			
			if (GetGlobalNumber("KOR_SITHJOIN") > 0)
				{
					if (!GetGlobalBoolean("KOR_END_HOSTILE"))
						{
							SetLocked(oDoor, FALSE);
						}
					
					object oMekel = GetObjectByTag("kor33_mekel", 0);
					object oGoon1 = GetObjectByTag("kor33_mekfight1", 0);
					object oGoon2 = GetObjectByTag("kor33_mekfight2", 0);
					object oGoon3 = GetObjectByTag("kor33_mekfight3", 0);
					
					if (GetIsObjectValid(oMekel))
						{
							DestroyObject(oMekel, 0.0, TRUE);
						}
					if (GetIsObjectValid(oGoon1))
						{
							DestroyObject(oGoon1, 0.0, TRUE);
						}
					if (GetIsObjectValid(oGoon2))
						{
							DestroyObject(oGoon2, 0.0, TRUE);
						}
					if (GetIsObjectValid(oGoon3))
						{
							DestroyObject(oGoon3, 0.0, TRUE);
						}
				}
			
			if (GetGlobalBoolean("KOR_END_HOSTILE"))
				{
					object oMedal = GetItemPossessedBy(oPC, "k33_itm_sithmdln");
					
					if (GetIsObjectValid(oMedal))
						{
							DestroyObject(oMedal);
						}
					
					AssignCommand(oDoor, ActionCloseDoor(oDoor));
					DelayCommand(0.5, SetLocked(oDoor, TRUE));
					
					object oGuard = GetObjectByTag("k33_academyguard", 0);
					
					SetPlotFlag(oGuard, FALSE);
					ChangeToStandardFaction(oGuard, STANDARD_FACTION_HOSTILE_1);
				}
			
			if (GetAreaUnescapable() && GetGlobalBoolean("KOR_MURDER_DEAD"))
				{
					Db_PostString("Area escapable", 10, 10, 5.0);
					SetAreaUnescapable(FALSE);
				}
			
			if (!GetFlag() && GetGlobalBoolean("DAN_BELAYA_DEFECT") && GetGlobalNumber("DAN_JUHANI_PLOT") == 2)
				{
					SetFlag(TRUE);
					
					object oWP_Belaya = GetObjectByTag("k33b_way_belaya", 0);
					location lBelaya = GetLocation(oWP_Belaya);
					
					DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "kor33b_belaya", lBelaya));
				}
		}
}
