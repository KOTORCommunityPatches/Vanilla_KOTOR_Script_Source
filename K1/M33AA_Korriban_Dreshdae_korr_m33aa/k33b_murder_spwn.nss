#include "k_inc_utility"

// Probably missing Korriban include functions.
void SetTriggered(int nState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
}

int GetNeedMedallion() {
	return GetGlobalBoolean("KOR33_MEDALLION");
}

int GetTriggered() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	if (GetTriggered() == FALSE && GetEnteringObject() == GetFirstPC() && GetNeedMedallion() == TRUE)
		{
			SetTriggered(TRUE);
			
			object oWP_Victim1 = GetObjectByTag("k33b_way_murder", 0);
			object oWP_Victim2 = GetObjectByTag("k33b_way_victim1", 0);
			object oWP_Murderer = GetObjectByTag("k33b_way_sithmrd", 0);
			location lVictim1 = GetLocation(oWP_Victim1);
			location lVictim2 = GetLocation(oWP_Victim2);
			location lMurderer = GetLocation(oWP_Murderer);
			
			CreateObject(OBJECT_TYPE_CREATURE, "kor33b_murderer", lMurderer);
			CreateObject(OBJECT_TYPE_CREATURE, "kor33b_murdered", lVictim1);
			CreateObject(OBJECT_TYPE_CREATURE, "kor33b_victim1", lVictim2);
		}
}
