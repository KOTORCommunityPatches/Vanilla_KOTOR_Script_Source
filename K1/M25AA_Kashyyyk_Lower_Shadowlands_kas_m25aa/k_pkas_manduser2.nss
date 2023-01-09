#include "k_inc_kas"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 100)
		{
			if (GetMandalorianPlotGlobal() > 1)
				{
					object oDatapad = GetItemPossessedBy(OBJECT_SELF, "kas25_datapad2");
					
					ClearAllActions();
					DestroyObject(oDatapad);
				}
		}
	else if (nUser == 1001) // HEARTBEAT
		{

		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{
			if (GetMandalorianPlotGlobal() < 2)
				{
					SetMandalorianPlotGlobal(2);
				}
			
			SignalEvent(GetNearestObjectByTag("kas25_mandalor02", OBJECT_SELF, 1), EventUserDefined(100));
			SignalEvent(GetNearestObjectByTag("kas25_mandalor02", OBJECT_SELF, 2), EventUserDefined(100));
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
}
