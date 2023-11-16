#include "k_inc_dan"

void main() {
	
	SoundObjectPlay(GetObjectByTag("dan14_hound", 0));
	
	int nCnt = 1;
	object oKath = GetNearestObjectByTag("g_kathhoundamb", OBJECT_SELF, nCnt);
	
	while (GetIsObjectValid(oKath))
		{
			ChangeToStandardFaction(oKath, STANDARD_FACTION_NEUTRAL);
			AssignCommand(oKath, ActionMoveToObject(GetObjectByTag("spawn_kath02", 0), TRUE));
			
			nCnt++;
			
			oKath = GetNearestObjectByTag("g_kathhoundamb", OBJECT_SELF, nCnt);
		}
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}
