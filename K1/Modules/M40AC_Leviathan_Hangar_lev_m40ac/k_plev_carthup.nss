#include "k_inc_utility"

void main() {
	
	object oCarth = GetObjectByTag("Carth", 0);
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	
	UT_ActionPauseConversation(3.0);
	
	AssignCommand(oMalak, PlayAnimation(ANIMATION_LOOPING_TALK_LAUGHING, 1.0, 3.0));
}