// GetStringByStrRef hotfix

#include "k_inc_man"

 void main() {
 	
	UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("wp_npc_d01", 0)));
 	UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("wp_npc_d02", 0)));
 }
