#include "k_inc_generic"

void main() {
	
	SetPlotFlag(GetObjectByTag("bastila", 0), FALSE);
	SetPlotFlag(GetObjectByTag("jolee", 0), FALSE);
	SetPlotFlag(GetObjectByTag("juhani", 0), FALSE);
	
	ChangeToStandardFaction(GetObjectByTag("jolee", 0), STANDARD_FACTION_HOSTILE_1);
	DelayCommand(0.1, AssignCommand(GetObjectByTag("jolee", 0), GN_DetermineCombatRound(OBJECT_INVALID)));
	
	ChangeToStandardFaction(GetObjectByTag("juhani", 0), STANDARD_FACTION_HOSTILE_1);
	DelayCommand(0.1, AssignCommand(GetObjectByTag("juhani", 0), GN_DetermineCombatRound(OBJECT_INVALID)));
	
	DelayCommand(0.2, DestroyObject(OBJECT_SELF, 0.0, TRUE));
}
