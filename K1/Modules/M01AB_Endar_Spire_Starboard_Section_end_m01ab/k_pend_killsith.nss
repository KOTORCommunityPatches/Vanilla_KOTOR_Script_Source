#include "k_inc_end"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetTag(oEntering) == "end_sithsol01" || GetTag(oEntering) == "end_sith03")
		{
			PlayExplosion("wp_end_killsith", TRUE, TRUE);
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(FALSE, TRUE), oEntering, 0.0);
		}
}
