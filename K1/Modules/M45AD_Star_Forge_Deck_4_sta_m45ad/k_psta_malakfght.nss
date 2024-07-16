#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	object oDoor1 = GetObjectByTag("k45_door_malak", 0);
	object oDoor2 = GetObjectByTag("sta45d_sta45c", 0);
	
	AssignCommand(oDoor1, ActionCloseDoor(oDoor1));
	SetLocked(oDoor1, TRUE);
	AssignCommand(oDoor2, ActionCloseDoor(oDoor2));
	SetLocked(oDoor2, TRUE);
	
	object oPC = GetFirstPC();
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	GN_DetermineCombatRound();
}
