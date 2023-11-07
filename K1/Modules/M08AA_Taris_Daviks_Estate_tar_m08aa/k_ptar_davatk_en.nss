// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"
 
 void main() {
 	
	object oEntering = GetEnteringObject();
 	object oDoor = GetObjectByTag("tar08_hangardoor", 0);
 	int nNum;
 	object oObj1;
 	object oObj2;
 	
	SetGlobalNumber("K_KOTOR_MASTER", 10);
 	
	UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
 	
	SetPartyLeader(NPC_PLAYER);
 	
	NoClicksFor(1.2);
 	
	DelayCommand(1.0, UT_NPC_InitConversation("davik082", "", OBJECT_INVALID));
 }
