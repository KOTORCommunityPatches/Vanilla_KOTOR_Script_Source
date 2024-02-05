// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_tar"
#include "k_inc_generic"

void main() {
	
	int nCnt;
	object oTarget;
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	oTarget = OBJECT_SELF;
	
	DelayCommand(1.0, AssignCommand(oTarget, GN_DetermineCombatRound()));
	
	nCnt = 0;
	
	while (GetIsObjectValid(oTarget = GetObjectByTag("tar03_turret", nCnt)))
		{
			ChangeToStandardFaction(oTarget, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(1.0, AssignCommand(oTarget, GN_DetermineCombatRound()));
			
			nCnt++;
		}
	
	DelayCommand(6.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), GetFirstPC(), 0.0));
}
