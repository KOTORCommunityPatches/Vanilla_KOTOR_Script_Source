// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_utility"

void main() {
	
	int nCnt;
	object oDroid;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oDroid = GetObjectByTag("unk44_shielddrd", nCnt)))
		{
			ChangeToStandardFaction(oDroid, STANDARD_FACTION_INSANE);
			DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_COM_SPARKS_LARGE, FALSE), oDroid, 0.0));
			
			nCnt++;
		}
	
	UT_RemoveComputerSpikes(20);
	
	SetGlobalBoolean("Unk_ProtDroidCrazy", TRUE);
}
