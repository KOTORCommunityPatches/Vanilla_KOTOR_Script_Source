// Byte code does not match

#include "k_inc_utility"
 
 void SetFlag(int intParam1) {
 	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, intParam1);
 }
 
 int GetFlag() {
 	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
 }
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oSaber = GetItemPossessedBy(oPC, "k39_itm_cersaber");
 	object oWP_Uthar = GetObjectByTag("k39_way_utharjmp", 0);
 	object oWP_Yuthura = GetObjectByTag("k39_way_yuthjump", 0);
 	object oUthar = GetObjectByTag("kor39_utharwynn", 0);
 	object oYuthura = GetObjectByTag("kor39_yuthura", 0);
 	
 	if ((((((((GetEnteringObject() == oPC)
 	&& GetIsObjectValid(oSaber))
 	&& GetIsObjectValid(oUthar))
 	&& GetIsObjectValid(oYuthura))
 	&& (!GetIsDead(oUthar)))
 	&& (!GetIsDead(oYuthura)))
 	&& (!GetFlag())))
 		{
 			object oDoor = GetObjectByTag("k39_door_starmap", 0);
 			
 			SetFlag(1);
 			
 			AssignCommand(oDoor, ActionCloseDoor(oDoor));
 			SetLocked(oDoor, TRUE);
 			
 			UT_NPC_InitConversation("kor39_utharwynn", "", OBJECT_INVALID);
 		}
 }
