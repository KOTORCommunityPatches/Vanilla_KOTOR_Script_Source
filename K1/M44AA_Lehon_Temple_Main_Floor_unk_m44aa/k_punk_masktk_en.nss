// Byte code does not match
#include "k_inc_utility"

void main() {
	
	SetGlobalFadeOut();
	
	SetPartyLeader(NPC_PLAYER);
	
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("mastwp", 0)))));
	
	NoClicksFor(0.5);
	
	DelayCommand(0.3, UT_NPC_InitConversation("darkjedi443", "", OBJECT_INVALID));
}
