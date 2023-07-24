#include "k_inc_utility"

void main() {
	
	int nCnt;
	object oRak;
	
	nCnt = 0;
	
	while (nCnt < 1)
		{
			oRak = GetNearestObjectByTag("tar04_rakghoulvic", OBJECT_SELF, nCnt + 1);
			
			if (GetIsObjectValid(oRak))
				{
					SignalEvent(oRak, EventUserDefined(2000));
				}
			
			nCnt++;
		}
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}
