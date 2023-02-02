#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	object oOpponent;
	
	switch (GetGlobalNumber("tar_duel"))
		{
			case 0:
				oOpponent = GetObjectByTag("deadeyedun021", 0);
				break;
			case 1:
				oOpponent = GetObjectByTag("gerlontwof021", 0);
				break;
			case 2:
				oOpponent = GetObjectByTag("ice021", 0);
				break;
			case 3:
				oOpponent = GetObjectByTag("marl021", 0);
				break;
			case 4:
				oOpponent = GetObjectByTag("twitch021", 0);
				break;
			case 6:
				Db_PostString("BENDAK MAD", 5, 5, 1.0);
				oOpponent = GetObjectByTag("Bendakstar021", 0);
				break;
		}
	
	SetGlobalBoolean("Tar_DuelOver", FALSE);
	UT_SetPlotBooleanFlag(oOpponent, SW_PLOT_BOOLEAN_01, FALSE);
	NoClicksFor(0.75);
	DelayCommand(1.0, SignalEvent(oOpponent, EventUserDefined(6000)));
}
