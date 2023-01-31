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
	
	object oPC = GetFirstPC();
	
	if (GetTriggered() == FALSE && GetEnteringObject() == oPC && GetNeedMedallion() == TRUE)
		{
			SetTriggered(TRUE);
			
			object oWP_Leader = GetObjectByTag("k33b_way_leader", 0);
			object oWP_Thug01 = GetObjectByTag("k33b_way_thug1", 0);
			object oWP_Thug02 = GetObjectByTag("k33b_way_thug2", 0);
			object oWP_Thug03 = GetObjectByTag("k33b_way_thug3", 0);
			object oWP_Yuth = GetObjectByTag("k33_way_yuthura", 0);
			location lLeader = GetLocation(oWP_Leader);
			location lThug01 = GetLocation(oWP_Thug01);
			location lThug02 = GetLocation(oWP_Thug02);
			location lThug03 = GetLocation(oWP_Thug03);
			location lYuth = GetLocation(oWP_Yuth);
			
			CreateObject(OBJECT_TYPE_CREATURE, "k33b_sththuglead", lLeader);
			CreateObject(OBJECT_TYPE_CREATURE, "k33b_siththug1", lThug01);
			CreateObject(OBJECT_TYPE_CREATURE, "k33b_siththug2", lThug02);
			CreateObject(OBJECT_TYPE_CREATURE, "k33b_siththug3", lThug03);
			CreateObject(OBJECT_TYPE_CREATURE, "kor33_yuthura", lYuth);
		}
}