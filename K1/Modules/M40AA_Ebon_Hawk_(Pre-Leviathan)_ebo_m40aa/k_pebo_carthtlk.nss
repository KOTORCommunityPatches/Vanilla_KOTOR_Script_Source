#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			HoldWorldFadeInForDialog();
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			SetGlobalFadeOut();
			
			NoClicksFor(1.2);
			
			DelayCommand(1.0, AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(GetFirstPC(), "lev40_carth", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
}