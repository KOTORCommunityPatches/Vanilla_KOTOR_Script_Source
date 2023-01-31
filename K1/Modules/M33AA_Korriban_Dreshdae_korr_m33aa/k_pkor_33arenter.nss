#include "k_inc_utility"

// Presumably include functions from unavailable k_inc_kor
void SetFlag(int nState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
}

int GetFlag() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetEnteringObject() == oPC)
		{
			if (!GetFlag())
				{
					SetFlag(TRUE);
					RevealMap();
				}
			
			if (GetGlobalNumber("KOR_SITHJOIN") > 0)
				{
					object oYuth = GetObjectByTag("kor33_yuthura", 0);
					
					if (GetIsObjectValid(oYuth))
						{
							DestroyObject(oYuth);
						}
				}
			
			if (GetGlobalNumber("KOR_FINAL_TEST") > 0)
				{
					object oLeader = GetObjectByTag("k33b_sththuglead", 0);
					if (GetIsObjectValid(oLeader))
						{
							DestroyObject(oLeader);
						}
					
					object oThug01 = GetObjectByTag("k33b_siththug1", 0);
					if (GetIsObjectValid(oThug01))
						{
							DestroyObject(oThug01);
						}
					
					object oThug02 = GetObjectByTag("k33b_siththug2", 0);
					if (GetIsObjectValid(oThug02))
						{
							DestroyObject(oThug02);
						}
					
					object oThug03 = GetObjectByTag("k33b_siththug3", 0);
					if (GetIsObjectValid(oThug03))
						{
							DestroyObject(oThug03);
						}
					
					object oMurderer = GetObjectByTag("kor33b_murderer", 0);
					if (GetIsObjectValid(oMurderer))
						{
							DestroyObject(oMurderer);
							SetGlobalBoolean("KOR_MURDER_DEAD", TRUE);
						}
					
					object oMurdered = GetObjectByTag("kor33b_murdered", 0);
					if (GetIsObjectValid(oMurdered))
						{
							DestroyObject(oMurdered);
						}
					
					object oVictim = GetObjectByTag("kor33b_victim1", 0);
					if (GetIsObjectValid(oVictim))
						{
							DestroyObject(oVictim);
						}
				}
			
			if (GetGlobalBoolean("K_KOR_PORT_FEE") == FALSE)
				{
					object oDoor = GetObjectByTag("k33a_dor_port", 0);
					AssignCommand(oDoor, ActionCloseDoor(oDoor));
					SetLocked(oDoor, TRUE);
				}
			
			object oDak = GetObjectByTag("kor33a_dakvesser", 0);
			if (GetGlobalBoolean("KOR_DAK_LEAVE") && !GetIsObjectValid(oDak))
				{
					object oWP_Dak = GetObjectByTag("k33_way_dak", 0);
					location lSp_Dak = GetLocation(oWP_Dak);
					CreateObject(OBJECT_TYPE_CREATURE, "kor33a_dakvesser", lSp_Dak);
				}
		}
}