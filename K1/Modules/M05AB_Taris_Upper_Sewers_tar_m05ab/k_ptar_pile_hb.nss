// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_debug"
 
 void RancorJump(object oNPC) {
 	AssignCommand(oNPC, ClearAllActions());
 	AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag("tar05_wprancor", 0), 0));
 }
 
 void main() {
 	
 	object oStampy = GetObjectByTag("tar05_stampy", 0);
 	int int1;
 	object object3;
 	
 	if (!GetGlobalBoolean("TAR_RANCOREATING") && GetIsObjectValid(GetItemPossessedBy(OBJECT_SELF, "tar05_synthodor")))
 		{
 			Db_PostString("EATING 2...", 5, 5, 5.0);
 			
 			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, 0);
 			
 			SetLocked(OBJECT_SELF, TRUE);
 			SetGlobalBoolean("TAR_RANCOREATING", TRUE);
 			
 			SetGlobalFadeOut(0.0, 1.0);
 			
 			DelayCommand(1.0, RancorJump(oStampy));
 			
 			ActionWait(1.0);
 			ActionStartConversation(OBJECT_SELF, "");
 		}
 }