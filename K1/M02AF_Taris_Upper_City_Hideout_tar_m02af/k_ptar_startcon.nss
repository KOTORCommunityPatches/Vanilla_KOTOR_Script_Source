#include "k_inc_utility"

void main() {
	
	if (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			ActionStartConversation(GetLastUsedBy(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
		}
		else
			{
				ShowUpgradeScreen(OBJECT_INVALID);
			}
}
