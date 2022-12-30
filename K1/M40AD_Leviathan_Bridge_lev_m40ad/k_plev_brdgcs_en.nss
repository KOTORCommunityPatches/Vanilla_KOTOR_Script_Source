// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	object oLev40_bdgdoor = GetObjectByTag("lev40_bdgdoor", 0);
 	object oInvis = GetObjectByTag("lev40_talker", 0);
 	object object7;
 	int int1;
 	
 	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);
 			
 			if (GetIsObjectValid(oInvis))
 				{
 					Db_PostString("TALKING...", 5, 5, 5.0);
 					AssignCommand(GetPartyMemberByIndex(0), ClearAllActions());
 					AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
 					AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
 					NoClicksFor(0.7);
 					DelayCommand(0.5, AssignCommand(oInvis, ActionStartConversation(oInvis)));
 				}
 		}
 }
