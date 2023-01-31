#include "k_inc_generic"

void main() {
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oThug01 = GetObjectByTag("k33b_siththug1", 0);
	object oThug02 = GetObjectByTag("k33b_siththug2", 0);
	object oThug03 = GetObjectByTag("k33b_siththug3", 0);
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	ChangeToStandardFaction(oThug01, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug02, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug03, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, AssignCommand(oThug01, GN_DetermineCombatRound(oPM0)));
	
	if (GetIsObjectValid(oPM1))
		{
			DelayCommand(0.5, AssignCommand(oThug02, GN_DetermineCombatRound(oPM1)));
		}
		else
			{
				DelayCommand(0.5, AssignCommand(oThug02, GN_DetermineCombatRound(oPM0)));
			}
	
	if (GetIsObjectValid(oPM2))
		{
			DelayCommand(0.5, AssignCommand(oThug03, GN_DetermineCombatRound(oPM2)));
		}
		else
			{
				DelayCommand(0.5, AssignCommand(oThug03, GN_DetermineCombatRound(oPM0)));
			}
	
	DelayCommand(0.5, ActionAttack(oPM0));
}