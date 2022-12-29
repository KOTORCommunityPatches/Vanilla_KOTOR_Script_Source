#include "k_inc_tar"

void main() {
	
	if (TAR_GetWearingSithArmor(OBJECT_INVALID))
		{
			UT_NPC_InitConversation("tar02_canttrooper", "", OBJECT_INVALID);
		}
		else
			{
				ClearAllActions();
				ActionOpenDoor(OBJECT_SELF);
			}
}
