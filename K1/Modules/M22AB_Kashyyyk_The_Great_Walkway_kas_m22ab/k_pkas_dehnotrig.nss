// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	object oEntering = GetEnteringObject();
 	
 	if (GetIsPC(oEntering) == TRUE)
 		{
 			UT_NPC_InitConversation("kas22_dehno_01", "", OBJECT_INVALID);
 			DestroyObject(OBJECT_SELF);
 		}
 }
