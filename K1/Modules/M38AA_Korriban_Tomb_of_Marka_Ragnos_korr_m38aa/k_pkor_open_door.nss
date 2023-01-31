// Byte code does not match

#include "k_inc_utility"
 
 void SetFlag(int nState) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
 }
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	//object oPC = GetFirstPC();
 	
 	if ((GetFlag() == FALSE))
 	{
 		object oPC = GetFirstPC();
 		object oPM0 = GetPartyMemberByIndex(0);
 		object oBelt06 = GetItemPossessedBy(oPC, "G_I_BELT006");
 		object oBelt07 = GetItemPossessedBy(oPC, "G_I_BELT007");
 		object oBelt08 = GetItemPossessedBy(oPC, "G_I_BELT008");
 		object oBelt10 = GetItemPossessedBy(oPC, "G_I_BELT010");
 		object oBeltGeno = GetItemPossessedBy(oPC, "Geno_stealth");
 		object oBelt06b = GetItemPossessedBy(oPM0, "G_I_BELT006");
 		object oBelt07b = GetItemPossessedBy(oPM0, "G_I_BELT007");
 		object oBelt08b = GetItemPossessedBy(oPM0, "G_I_BELT008");
 		object oBelt10b = GetItemPossessedBy(oPM0, "G_I_BELT010");
 		object oBeltGenob = GetItemPossessedBy(oPM0, "Geno_stealth");
 		//object oDroid = GetObjectByTag("k38a_assassindrd", 0);
 		//object oDoor = GetObjectByTag("k38a_door_locked", 0);
 		object oPCBelt = GetItemInSlot(10, oPC);
 		object oPM0Belt = GetItemInSlot(10, oPM0);
 		
 		if (GetIsObjectValid(oPCBelt) || GetIsObjectValid(oPM0Belt))
 			{
 				if ((oPCBelt == oBelt06 || oPCBelt == oBelt07 || oPCBelt == oBelt08 || oPCBelt == oBelt10 || oPCBelt == oBeltGeno) ||
 				(oPM0Belt == oBelt06b || oPM0Belt == oBelt07b || oPM0Belt == oBelt08b || oPM0Belt == oBelt10b || oPM0Belt == oBeltGenob))
 					{
 						UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
 					}
 			}
 		AssignCommand(oPC, ClearAllActions());
 		NoClicksFor(0.7);
 		DelayCommand(0.5, UT_NPC_InitConversation("k38a_assassindrd", "", OBJECT_INVALID));
 		SetFlag(TRUE);
 	}
 }