#include "k_inc_utility"

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	location lSpawn = GetLocation(GetNearestObjectByTag("kas25_wp_mandenc1", OBJECT_SELF, 1));
	string sMand = "kas25_mandalor01";
	
	if (!GetIsObjectValid(GetObjectByTag("kas25_mandtrig2", 0))
		{
			sMand = "kas25_mand_end";
		}
	
	UT_ActionPauseConversation(2.3);
	
	CreateObject(OBJECT_TYPE_CREATURE, sMand, lSpawn, 0);
}
