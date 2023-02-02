#include "k_inc_end"

void main() {

	if (IsObjectPartyMember(GetEnteringObject()) && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01) == FALSE)
		{
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
			
			PlayExplosion("end_explode01", TRUE, TRUE);
			
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), GetNearestObjectByTag("end_weld", OBJECT_SELF, 1));
			
			SoundObjectStop(GetNearestObjectByTag("DroidWelding", OBJECT_SELF, 1));
		}
}
