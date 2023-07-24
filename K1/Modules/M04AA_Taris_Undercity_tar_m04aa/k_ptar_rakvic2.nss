#include "k_inc_utility"

void main() {
	
	int nCnt;
	object oVic;
	float fDelay = 0.0;
	
	nCnt = 0;
	
	while (nCnt < 3)
		{
			oVic = GetNearestObjectByTag("tar04_rakghoulvic", OBJECT_SELF, nCnt + 1);
			
			if (GetIsObjectValid(oVic))
				{
					DelayCommand(fDelay, SignalEvent(oVic, EventUserDefined(2000)));
					
					fDelay = fDelay + 0.5;
				}
			
			nCnt++;
		}
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}
