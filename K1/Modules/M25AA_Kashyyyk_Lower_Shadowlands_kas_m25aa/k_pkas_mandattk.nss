#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oNote = GetItemPossessedBy(oPC, "kas25_note");
	object oWP_Spn1 = GetWaypointByTag("BP_MAND3_WP");
	object oWP_Spn2 = GetWaypointByTag("BP_MAND4_WP");
	object oCutItem = GetObjectByTag("kas25_mandcomm", 0);
	location lSpn1 = GetLocation(oWP_Spn1);
	location lSpn2 = GetLocation(oWP_Spn2);
	
	UT_ActionPauseConversation(3.0);
	
	CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor03", lSpn1);
	CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor04", lSpn2);
	
	DestroyObject(oNote);
}