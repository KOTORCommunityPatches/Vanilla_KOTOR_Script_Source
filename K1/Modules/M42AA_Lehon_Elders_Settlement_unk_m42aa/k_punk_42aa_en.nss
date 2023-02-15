// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_unk"

void main() {
	
	int nCnt;
	object oEncounter;
	
	if (GetGlobalBoolean("Unk_RedHostile"))
		{
			UNK_SetRedRakataHostile();
			
			nCnt = 0;
			
			while (GetIsObjectValid(oEncounter = GetObjectByTag("unk42_redwarriors", nCnt)))
				{
					SetEncounterActive(TRUE, oEncounter);
					
					nCnt++;
				}
			
			SetAreaUnescapable(TRUE);
		}
}
