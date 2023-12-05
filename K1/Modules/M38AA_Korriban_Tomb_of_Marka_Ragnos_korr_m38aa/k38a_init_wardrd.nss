// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"
#include "k_inc_debug"

void SetTriggered(int bValue) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bValue);
}

int GetTriggered() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oDampening = GetItemPossessedBy(oPM0, "G_I_BELT006");
	object oAdvanced = GetItemPossessedBy(oPM0, "G_I_BELT007");
	object oEriadu = GetItemPossessedBy(oPM0, "G_I_BELT008");
	object oGeno = GetItemPossessedBy(oPM0, "Geno_stealth");
	object oBelt = GetItemInSlot(INVENTORY_SLOT_BELT, oPM0);
	string sBelt = GetTag(oBelt);
	object oDroid = GetNearestObjectByTag("kor38a_wardroid", OBJECT_SELF, 1);
	
	if (GetEnteringObject() == oPM0 && GetTriggered() == FALSE)
		{
			if (sBelt != GetTag(oDampening) && sBelt != GetTag(oAdvanced) && sBelt != GetTag(oEriadu) && sBelt != GetTag(oGeno))
				{
					if (GetGlobalNumber("KOR_WAR_DEAD") < 12)
						{
							AssignCommand(oDroid, ClearAllActions());
							AssignCommand(oPM0, ClearAllActions());
							
							if (d100(1) < Random(11))
								{
									BarkString(OBJECT_INVALID, 15832);
								}
								else if (d100(1) < Random(22))
									{
										BarkString(OBJECT_INVALID, 15833);
									}
									else
										{
											BarkString(OBJECT_INVALID, 15834);
										}
							
							SetTriggered(TRUE);
						}
						else
							{
								Db_PostString(("Variable KOR_WAR_DEAD = " + IntToString(GetGlobalNumber("KOR_WAR_DEAD"))), 10, 10, 5.0);
							}
				}
				else
					{
						Db_PostString("A belt is present", 10, 10, 5.0);
					}
		}
}
