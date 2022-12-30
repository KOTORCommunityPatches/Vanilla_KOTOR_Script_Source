#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			HoldWorldFadeInForDialog();
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			NoClicksFor(1.2);
			
			DelayCommand(1.0, AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(oEntering, "ebo_carth", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
}
