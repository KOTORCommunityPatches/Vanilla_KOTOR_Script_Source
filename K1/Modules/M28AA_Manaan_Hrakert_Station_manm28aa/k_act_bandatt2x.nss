#include "k_inc_generic"

void main() {
	
	int nMook = 0;
	object oLackeyA = GetObjectByTag("g_darkjedi02", nMook);
	object oLackeyB = GetObjectByTag("g_darkjedi02", nMook);
	
	while ((GetIsObjectValid(oLackeyA) || GetIsObjectValid(oLackeyB)))
		{
			if (GetIsObjectValid(oLackeyA))
				{
					ChangeToStandardFaction(oLackeyA, STANDARD_FACTION_HOSTILE_1);
					DelayCommand(0.5, AssignCommand(oLackeyA, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(oLackeyA, GN_DetermineCombatRound(OBJECT_INVALID)));
				}
			if (GetIsObjectValid(oLackeyB))
				{
					ChangeToStandardFaction(oLackeyB, STANDARD_FACTION_HOSTILE_1);
					DelayCommand(0.5, AssignCommand(oLackeyB, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(oLackeyB, GN_DetermineCombatRound(OBJECT_INVALID)));
				}
			(nMook++);
			
			oLackeyA = GetObjectByTag("g_bandonlacky", nMook);
			oLackeyB = GetObjectByTag("g_bandonlacky", nMook);
		}
	
	ChangeToStandardFaction(GetObjectByTag("g_bandon", 0), 1);
	
	DelayCommand(0.5, ClearAllActions());
	DelayCommand(0.5, GN_DetermineCombatRound(OBJECT_INVALID));
}