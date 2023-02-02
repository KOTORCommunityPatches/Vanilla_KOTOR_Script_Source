#include "k_inc_generic"

void main() {
	
	AdjustReputation(GetPartyMemberByIndex(0), GetObjectByTag("kas_xor1", 0), (-100));
	AdjustReputation(GetPartyMemberByIndex(1), GetObjectByTag("kas_xor1", 0), (-100));
	AdjustReputation(GetPartyMemberByIndex(2), GetObjectByTag("kas_xor1", 0), (-100));
	
	DelayCommand(0.5, AssignCommand(GetObjectByTag("kas_xor1", 0), GN_DetermineCombatRound(GetObjectByTag("Juhani", 0))));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("kas_xor2", 0), GN_DetermineCombatRound(GetObjectByTag("Juhani", 0))));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("kas_xor3", 0), GN_DetermineCombatRound(GetObjectByTag("Juhani", 0))));
}
