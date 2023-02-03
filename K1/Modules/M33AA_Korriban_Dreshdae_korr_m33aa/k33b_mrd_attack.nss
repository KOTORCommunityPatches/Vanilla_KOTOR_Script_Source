// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"

void main() {
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, GN_DetermineCombatRound(GetPCSpeaker()));
	
	object oVictim1 = GetObjectByTag("kor33b_victim1", 0);
	
	DestroyObject(oVictim1);
	
	object oVictim2 = GetObjectByTag("kor33b_murdered", 0);
	event eUser = EventUserDefined(20);
	
	SignalEvent(oVictim2, eUser);
}
