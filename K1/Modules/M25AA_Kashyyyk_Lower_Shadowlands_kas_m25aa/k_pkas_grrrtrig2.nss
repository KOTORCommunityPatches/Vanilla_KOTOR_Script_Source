#include "k_inc_kas"

void main() {
	
	object oEntering = GetEnteringObject();
	object oWook = GetObjectByTag("kas25_hurt_01", 0);
	
	if (IsObjectPartyMember(oEntering) && UT_GetTalkedToBooleanFlag(oWook) == TRUE && GetWookieHealedLocal(GetArea(OBJECT_SELF)) == FALSE)
		{
			SetMinOneHP(oWook, FALSE);
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(GetCurrentHitPoints(oWook)), oWook);
		}
}
