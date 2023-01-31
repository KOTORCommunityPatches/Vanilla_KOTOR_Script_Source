#include "k_inc_utility"

void main() {
	
	object oBastila = GetObjectByTag("bastila", 0);
	object oMalak = GetObjectByTag("darthmalak400", 0);
	
	UT_ActionPauseConversation(1.0);
	
	AssignCommand(oBastila, JumpToLocation(GetLocation(GetObjectByTag("lev40_wpbastila", 0))));
}