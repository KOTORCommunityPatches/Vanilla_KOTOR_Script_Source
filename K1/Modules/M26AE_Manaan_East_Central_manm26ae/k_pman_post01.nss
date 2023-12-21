// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	if (GetManaanStarMapFound() && HasNeverTriggered())
		{
			UT_NPC_InitConversation("man26ae_cut01");
		}
}
