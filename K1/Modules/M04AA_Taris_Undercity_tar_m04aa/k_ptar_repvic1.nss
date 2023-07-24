#include "k_inc_utility"

void sub1(object oObject) {
	location lLocation = GetLocation(oObject);
	object oWP = GetObjectByTag("ptar_wpgraveyard", 0);
}

void main() {
	
	object oRepSol = GetObjectByTag("republicso", 0);
	
	sub1(oRepSol);
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
