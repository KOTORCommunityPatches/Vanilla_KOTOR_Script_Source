#include "k_inc_generic"

void main() {
	
	ActionPauseConversation();
	
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectStunned(), GetObjectByTag("mission", 0), 50.0);
	
	ChangeToStandardFaction(GetObjectByTag("mission", 0), STANDARD_FACTION_FRIENDLY_2);
	ChangeToStandardFaction(GetObjectByTag("zaalbar", 0), STANDARD_FACTION_FRIENDLY_1);
	
	AssignCommand(GetObjectByTag("zaalbar", 0), GN_DetermineCombatRound(OBJECT_INVALID));
	
	ActionWait(3.0);
	DelayCommand(2.0, SetGlobalFadeOut(0.0, 1.0));
	ActionResumeConversation();
}