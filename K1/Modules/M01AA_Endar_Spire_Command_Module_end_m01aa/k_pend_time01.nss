#include "k_inc_end"

void main() {
	
	object oSelf = OBJECT_SELF;
	
	if (GetTraskWillInitiate() == FALSE)
		{
			SetTraskWillInitiate(TRUE);
			
			DelayCommand(20.0, SignalEvent(oSelf, EventUserDefined(100)));
		}
}
