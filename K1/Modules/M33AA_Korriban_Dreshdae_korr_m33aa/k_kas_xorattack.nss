// Byte code does not match

#include "k_inc_utility"
 
 void main() {
 	
 	location lXor = GetLocation(GetObjectByTag("kas_xor1_spawn", 0));
 	location lThugA = GetLocation(GetObjectByTag("kas_xor2_spawn", 0));
 	location lThugB = GetLocation(GetObjectByTag("kas_xor3_spawn", 0));
 	int nGlobal = GetGlobalNumber("K_XOR_AMBUSH");
 	
 	if (nGlobal == 1 && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
 		{
 			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 			
 			CreateObject(OBJECT_TYPE_CREATURE, "kas_xor1", lXor);
 			CreateObject(OBJECT_TYPE_CREATURE, "kas_xor2", lThugA);
 			CreateObject(OBJECT_TYPE_CREATURE, "kas_xor3", lThugB);
 			
 			AssignCommand(GetObjectByTag("invis_xor_conv", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 }
