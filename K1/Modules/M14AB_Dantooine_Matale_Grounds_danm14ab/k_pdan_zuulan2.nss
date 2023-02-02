#include "k_inc_utility"

void main() {
	
	object oWP_PM0 = GetObjectByTag("dan_party_move00", 0);
	object oWP_PM1 = GetObjectByTag("dan_party_move11", 0);
	object oWP_PM2 = GetObjectByTag("dan_party_move22", 0);
	object oZuulan = GetObjectByTag("dan_cut_zuulan", 0);
	object oDroid1 = GetObjectByTag("dan_cut_droid1", 0);
	object oDroid2 = GetObjectByTag("dan_cut_droid2", 0);
	location lRun1 = GetLocation(GetObjectByTag("dan_zuulan_move2", 0));
	location lRun2 = GetLocation(GetObjectByTag("dan_droid1_move2", 0));
	location lRun3 = GetLocation(GetObjectByTag("dan_droid2_move2", 0));
	
	UT_ActionPauseConversation(2.2);
	
	AssignCommand(oZuulan, ActionMoveToLocation(lRun1, TRUE));
	
	DelayCommand(0.2, AssignCommand(oDroid1, ActionMoveToLocation(lRun2, TRUE)));
	DelayCommand(0.3, AssignCommand(oDroid2, ActionMoveToLocation(lRun3, TRUE)));
}
