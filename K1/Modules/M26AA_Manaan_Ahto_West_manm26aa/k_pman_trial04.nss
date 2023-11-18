// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	ExecuteScript("k_pman_npcstart", GetPartyMemberByIndex(1), -1);
 	ExecuteScript("k_pman_npcstart", GetPartyMemberByIndex(2), -1);
 	
	SignalEvent(GetArea(OBJECT_SELF), EventUserDefined(130));
}
