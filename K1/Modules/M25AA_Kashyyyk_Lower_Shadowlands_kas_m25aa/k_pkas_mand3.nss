#include "k_inc_utility"

void PlaceNPC(string sTag, location lLocation = "") {
	CreateObject(OBJECT_TYPE_CREATURE, sTag, lLocation, FALSE);
}

void main() {
	
	string sMand2 = "kas25_mandalor02";
	string sMand3 = "kas25_mandalor03";
	location lSpawn2 = GetLocation(GetNearestObjectByTag("kas25_wp_mandenc2", OBJECT_SELF, 1));
	location lSpawn3 = GetLocation(GetNearestObjectByTag("kas25_wp_mandenc3", OBJECT_SELF, 1));
	
	UT_ActionPauseConversation(2.6);
	
	PlaceNPC(sMand2, lSpawn2);
	DelayCommand(0.4, PlaceNPC(sMand3, lSpawn3));
}
