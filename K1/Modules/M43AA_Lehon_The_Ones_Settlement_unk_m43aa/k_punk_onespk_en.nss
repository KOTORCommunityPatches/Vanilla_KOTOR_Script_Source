// Byte code does not match
#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oTheOne = GetObjectByTag("unk43_theone", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			HoldWorldFadeInForDialog();
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);
			
			SetGlobalFadeOut();
			SetGlobalFadeIn(1.5, 1.5);
			
			NoClicksFor(1.2);
			
			DelayCommand(1.0, UT_NPC_InitConversation(GetTag(oTheOne), "", OBJECT_INVALID));
		}
}