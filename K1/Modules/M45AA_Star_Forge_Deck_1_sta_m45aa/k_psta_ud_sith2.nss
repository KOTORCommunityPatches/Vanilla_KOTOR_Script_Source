// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			if (GetGlobalBoolean("STA_SITH_RUN"))
				{
					object oPC = GetFirstPC();
					
					ClearAllActions();
					ActionMoveToObject(oPC, TRUE, 1.0);
				}
		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{
			if (GetGlobalNumber("STA_JEDI_ATTACK") == 8)
				{
					int nFP = (GetMaxForcePoints(OBJECT_SELF) - GetCurrentForcePoints(OBJECT_SELF));
					effect nRegen = EffectHealForcePoints(nFP);
					
					ApplyEffectToObject(DURATION_TYPE_INSTANT, nRegen, OBJECT_SELF, 0.0);
					ClearAllActions();
					
					GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE);
					
					object oJedi2 = GetObjectByTag("k_sta_lightjedi2", 0);
					talent talSpell = TalentSpell(FORCE_POWER_DRAIN_LIFE);
					
					ActionUseTalentOnObject(talSpell, oJedi2);
					
					event eUser = EventUserDefined(452);
					
					DelayCommand(5.0, SignalEvent(oJedi2, eUser));
					DelayCommand(5.0, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE));
				}
		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{

		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
	else if (nUser == 451)
		{
			effect eDamage = EffectDamageForcePoints(100);
			ApplyEffectToObject(DURATION_TYPE_INSTANT, eDamage, OBJECT_SELF, 0.0);
		}
}
