#include "k_inc_end"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (HasNeverTriggered())
		{
			SetXP(GetFirstPC(), 1000);
			SetTraskState(TRASK_LEVEL_INIT);
			TalkTrask();
		}
}
