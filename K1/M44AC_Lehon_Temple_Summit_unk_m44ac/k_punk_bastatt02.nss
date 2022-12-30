#include "k_inc_debug"

void main() {

	ActionPauseConversation();
	
	AssignCommand(GetPartyMemberByIndex(0), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
	AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushed(), GetPartyMemberByIndex(0), 0.0);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushed(), GetPartyMemberByIndex(1), 0.0);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushed(), GetPartyMemberByIndex(2), 0.0);
	
	Db_PostString("phase 1", 5, 5, 1.0);
	
	ActionWait(0.5);
	ActionResumeConversation();
}
