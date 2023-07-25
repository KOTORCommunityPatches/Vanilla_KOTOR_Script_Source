// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"
#include "k_inc_debug"

void SetState(int nValue) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, nValue);
}

int GetState() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
}

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oVic = GetObjectByTag("kor35_victim", 0);
	object oTort = GetObjectByTag("kor35_torturer", 0);
	
	if (GetEnteringObject() == oPC)
		{
			Db_PostString("Party entered.", 4, 4, 4.0);
			
			if (GetIsDead(oVic))
				{
					Db_PostString("Victim dead.", 6, 6, 4.0);
					
					if (!GetState())
						{
							Db_PostString("Trigger entered.", 8, 8, 4.0);
							
							if (GetIsObjectValid(oTort))
								{
									Db_PostString("Torturer valid", 10, 10, 4.0);
									
									SetState(TRUE);
								}
						}
				}
		}
}
