#include "k_inc_end"

void main() {
	
	ActionPauseConversation();
	
	ActionWait(2.0);
	
	ActionDoCommand(PlayExplosion("wp_cutblast01", TRUE, TRUE));
	
	ActionWait(2.0);
	
	ActionDoCommand(PlayExplosion("wp_cutblast02", TRUE, TRUE));
	
	ActionResumeConversation();
}
