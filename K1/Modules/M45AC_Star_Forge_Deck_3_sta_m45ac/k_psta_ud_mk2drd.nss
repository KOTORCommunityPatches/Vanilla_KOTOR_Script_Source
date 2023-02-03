// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			object oMk2Droid = GetObjectByTag("k45_plc_mk2droid", 0);
			
			if (!GetFactionEqual(OBJECT_SELF, oMk2Droid))
				{
					if (GetGlobalBoolean("STA_DROID_STAND") != TRUE)
						{
							object oPC = GetFirstPC();
							ActionMoveToObject(oPC, TRUE, 1.0);
						}
				}
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

		}
	else if (nUser == 1007) // DEATH
		{
			object oMk2Droid = GetObjectByTag("k45_plc_mk2droid", 0);
			
			if (GetIsObjectValid(oMk2Droid) && !GetGlobalBoolean("STA_GEN_NEW"))
				{
					CreateItemOnObject("g_i_progspike01", GetObjectByTag((GetTag(OBJECT_SELF) + "_bin"), 0), 1);
					
					ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047, FALSE), GetLocation(OBJECT_SELF), 0.0);
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE, FALSE), GetFirstPC(), 0.0);
					ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047, FALSE), GetLocation(GetObjectByTag((GetTag(OBJECT_SELF) + "_bin"), 0)), 0.0);
					ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_SHIELD_GREEN_01, FALSE), GetObjectByTag((GetTag(OBJECT_SELF) + "_bin"), 0), 0.0);
					
					event eUser = EventUserDefined(145);
					
					SignalEvent(oMk2Droid, eUser);
				}
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
