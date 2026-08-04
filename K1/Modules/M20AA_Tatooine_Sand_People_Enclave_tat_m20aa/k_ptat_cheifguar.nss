// GetStringByStrRef hotfix

#include "k_inc_utility"

void main() {
	
	object oTusken = GetObjectByTag("tat20_09first_01", 0);
	object oEntering = GetEnteringObject();
	
	if ((GetIsPC(oEntering) == TRUE) && (GetIsEnemy(oTusken, oEntering) == FALSE))
	{
		UT_NPC_InitConversation("tat20_09first_01", "", OBJECT_INVALID);
	}
}
