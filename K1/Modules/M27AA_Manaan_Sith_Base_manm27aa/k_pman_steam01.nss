// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	object oTarget = GetEnteringObject();
 	
	if (GetIsVentActive(OBJECT_SELF))
		{
			if (GetObjectType(oTarget) == OBJECT_TYPE_CREATURE)
				{
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(STEAM_DAMAGE_AMOUNT, DAMAGE_TYPE_UNIVERSAL), oTarget);
				}
		}
 }
