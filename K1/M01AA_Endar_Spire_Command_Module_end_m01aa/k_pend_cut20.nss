#include "k_inc_end"

void main() {
	
	object oJedi = GetObjectByTag("end_jedi01", 0);
	
	ActionPauseConversation();
	
	ActionWait(2.0);
	
	ActionDoCommand(SetMinOneHP(oJedi, FALSE));
	ActionDoCommand(ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oJedi));
	
	ActionDoCommand(PlayExplosion("wp_cutblast03", TRUE, TRUE));
	
	ActionWait(2.0);
	
	ActionResumeConversation();
}
