#include "k_inc_utility"

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	
	UT_ActionPauseConversation(0.8);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DRAIN), oMalak);
}
