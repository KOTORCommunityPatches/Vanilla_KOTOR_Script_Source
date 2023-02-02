// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) == TRUE && GetHelpedFreyyrGlobal() == TRUE)
 		{
 			UT_NPC_InitConversation("kas22_chorraw_02", "", OBJECT_INVALID);
 			DestroyObject(OBJECT_SELF);
 		}
 }
