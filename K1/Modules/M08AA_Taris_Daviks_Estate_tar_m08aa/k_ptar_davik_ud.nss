#include "k_inc_generic"
#include "k_inc_tar"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

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

		}
	else if (nUser == 1006) // DAMAGED
		{
			if (GetCurrentHitPoints(OBJECT_SELF) == 1)
				{
					SetMinOneHP(OBJECT_SELF, FALSE);
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), OBJECT_SELF);
				}
		}
	else if (nUser == 1007) // DEATH
		{
			object oCalo = GetObjectByTag("calo082", 0);
			
			SignalEvent(oCalo, EventUserDefined(2000));
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
}
