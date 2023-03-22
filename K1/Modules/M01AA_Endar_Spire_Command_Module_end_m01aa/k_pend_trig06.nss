#include "k_inc_end"

void main() {
	
	if (HasNeverTriggered())
		{
			SetTraskState(TRASK_DROID_DONE);
			TalkTrask();
		}
}
