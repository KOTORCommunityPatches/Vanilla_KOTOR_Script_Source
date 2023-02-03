// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	event eUser = EventUserDefined(44);
	
	if (nUser == 1001) // HEARTBEAT
		{

		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{
			if (GetTag(GetLastAttacker(OBJECT_SELF)) == "Vorn")
				{
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(FALSE, TRUE), OBJECT_SELF, 0.0);
				}
		}
	else if (nUser == 1006) // DAMAGED
		{
			int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
			int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
			object oPM0 = GetPartyMemberByIndex(0);
			object oPM1 = GetPartyMemberByIndex(1);
			object oPM2 = GetPartyMemberByIndex(2);
			object oInvis = GetObjectByTag("tat_invis_conv1", 0);
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
	else if (nUser == 44)
		{
			ActionPlayAnimation(ANIMATION_LOOPING_DEACTIVATE, 1.0, 999.0);
			ActionDoCommand(SignalEvent(OBJECT_SELF, eUser));
		}
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}
