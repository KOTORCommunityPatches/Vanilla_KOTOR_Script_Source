// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_utility"

void main() {
	
	int nCnt;
	object oDroid;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oDroid = GetObjectByTag("unk44_shielddrd", nCnt)))
		{
			SignalEvent(oDroid, EventUserDefined(2000));
			
			nCnt++;
		}
	
	UT_RemoveComputerSpikes(10);
	
	SetGlobalBoolean("Unk_ProtDroidShield", TRUE);
}
