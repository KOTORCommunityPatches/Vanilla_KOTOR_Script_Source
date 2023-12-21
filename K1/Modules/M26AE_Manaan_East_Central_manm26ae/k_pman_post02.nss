// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	ActionPauseConversation();
 	
	TurnOffPartyAI();
 	
	SetLockOrientationInDialog(GetFirstPC(), TRUE);
 	
	ExecuteScript("k_pman_player10", GetFirstPC(), -1);
}
