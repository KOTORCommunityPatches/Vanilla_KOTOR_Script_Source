// Byte code does not match
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
	object oPM0 = GetPartyMemberByIndex(0);
	
	if (GetEnteringObject() == oPM0 && GetState() == FALSE && GetGlobalNumber("KOR_SHAARDAN_SWORD") == 2 && GetGlobalNumber("KOR33_SHAARDAN") < 4)
		{
			SetState(TRUE);
			
			object oShaardan = GetObjectByTag("kor35_shaardan", 0);
			
			if (GetIsObjectValid(oShaardan))
				{
					object oUthar = GetObjectByTag("kor35_utharwynn", 0);
					
					AssignCommand(oUthar, ClearAllActions());
					
					UT_NPC_InitConversation("kor35_utharwynn", "", OBJECT_INVALID);
				}
		}
}
