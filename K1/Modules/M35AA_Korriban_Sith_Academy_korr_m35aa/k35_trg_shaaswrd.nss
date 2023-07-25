// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetState(int nValue) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nValue);
}

int GetState() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetEnteringObject() == oPC && GetState() == 0 && GetGlobalNumber("KOR_SHAARDAN_SWORD") == 2 && GetGlobalNumber("KOR33_SHAARDAN") != 5)
		{
			SetState(1);
			
			object oShaardan = GetObjectByTag("kor35_shaardan", 0);
			
			if (GetIsObjectValid(oShaardan))
				{
					object oSha_WP = GetObjectByTag("k35_way_shaaswrd", 0);
					
					AssignCommand(oShaardan, ClearAllActions());
					AssignCommand(oShaardan, ActionJumpToObject(oSha_WP, TRUE));
				}
		}
}
