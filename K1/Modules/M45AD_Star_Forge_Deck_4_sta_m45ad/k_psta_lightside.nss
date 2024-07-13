#include "k_inc_utility"

void main() {
	
	ActionPauseConversation();
	
	SetGlobalNumber("G_FinalChoice", 2);
	
	object oBastila = GetObjectByTag("sta_bastila", 0);
	
	if (!GetIsObjectValid(oBastila))
		{
			object oWP = GetObjectByTag("sta_way_bastila", 0);
			location lSpawn = GetLocation(oWP);
			
			UT_CreateObject(OBJECT_TYPE_CREATURE, "sta_bastila", lSpawn);
		}
	
	ActionResumeConversation();
}
