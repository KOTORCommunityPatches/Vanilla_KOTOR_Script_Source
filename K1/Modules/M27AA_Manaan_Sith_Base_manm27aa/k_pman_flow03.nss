// GetStringByStrRef hotfix

#include "k_inc_man"

 void main() {
 	
	int nNPC = 0;
 	float fDelay = 1.5;
 	effect efVisual = EffectVisualEffect(3002, 0);
 	object oNPC = GetPartyMemberByIndex(nNPC);
 	
	while (GetIsObjectValid(oNPC))
		{
			DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectChoke(), oNPC, fDelay));
			DelayCommand((fDelay + 0.5), ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oNPC));
			
			nNPC++;
			
			oNPC = GetPartyMemberByIndex(nNPC);
		}
 }
