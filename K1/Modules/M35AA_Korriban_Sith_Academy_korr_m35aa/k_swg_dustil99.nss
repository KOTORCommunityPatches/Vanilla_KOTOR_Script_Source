#include "k_inc_generic"

void main() {
	
	object oCarth = GetObjectByTag("Carth", 0);
	
	SetGlobalNumber("KOR_DANEL", 5);
	SetGlobalNumber("K_SWG_CARTH", 99);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, GN_DetermineCombatRound(oCarth));
}
