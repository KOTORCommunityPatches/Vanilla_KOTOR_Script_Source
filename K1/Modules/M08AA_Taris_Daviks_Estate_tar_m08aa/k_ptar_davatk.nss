#include "k_inc_tar"
#include "k_inc_generic"

void main() {
	
	object oRubble = GetNearestObjectByTag("tar08_ceilingfall", GetObjectByTag("tar08_wpcollapse0", 0), 1);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(GetObjectByTag("calo082", 0), STANDARD_FACTION_HOSTILE_1);
	DelayCommand(1.0, GN_DetermineCombatRound());
	DelayCommand(1.0, AssignCommand(GetObjectByTag("calo082", 0), GN_DetermineCombatRound()));
}
