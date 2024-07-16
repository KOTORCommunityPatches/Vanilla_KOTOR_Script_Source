// Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_end"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 10:
				ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_TRAP);
				DelayCommand(0.5, GN_DetermineCombatRound());
			break;
			case 20:
				SetMinOneHP(OBJECT_SELF, FALSE);
				ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), OBJECT_SELF);
			break;
		}
}
