#include "k_inc_generic"

void main() {
	
	DelayCommand(0.2, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1));
	DelayCommand(0.3, GN_DetermineCombatRound(OBJECT_INVALID));
	SetNPCAIStyle(OBJECT_SELF, NPC_AISTYLE_DEFAULT_ATTACK);
}
