#include "k_inc_generic"

void main() {
	
	object oMando1 = GetNearestObjectByTag("kas25_mandalor01", OBJECT_SELF, 1);
	object oMando2 = GetNearestObjectByTag("kas25_mandalor02", OBJECT_SELF, 1);
	object oMando3 = GetNearestObjectByTag("kas25_mandalor03", OBJECT_SELF, 1);
	
	if (!GetIsObjectValid(GetObjectByTag("kas25_mandtrig2", 0))
		{
			oMando1 = GetNearestObjectByTag("kas25_mand_end", OBJECT_SELF, 1);
		}
	
	ChangeToStandardFaction(oMando1, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oMando2, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oMando3, STANDARD_FACTION_HOSTILE_1);
	
	AssignCommand(oMando1, GN_DetermineCombatRound());
	AssignCommand(oMando2, GN_DetermineCombatRound());
	AssignCommand(oMando3, GN_DetermineCombatRound());
}