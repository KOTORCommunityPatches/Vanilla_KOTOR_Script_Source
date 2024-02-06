#include "k_inc_end"

void main() {
	
	if (GetXP(GetFirstPC()) == 0)
		{
			GivePlotXP("end_tutorial", 5);
		}
	
	object oTrask = GetTrask();
	
	if (GetTraskState() < 2)
		{
			SetTraskState(2);
			
			if (GetTraskWillInitiate() == FALSE)
				{
					SetTraskWillInitiate(TRUE);
					
					DelayCommand(20.0, SignalEvent(oTrask, EventUserDefined(100)));
				}
		}
}
