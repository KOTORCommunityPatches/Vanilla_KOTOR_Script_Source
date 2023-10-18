// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	int nGlobal = GetGlobalBoolean("MAN_PRESS_ON");
 	
	if (!nGlobal)
		{
			UT_NPC_InitConversation("man28ac_force01", "", OBJECT_INVALID);
		}
 }
