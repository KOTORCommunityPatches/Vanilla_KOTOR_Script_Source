// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (GetGlobalBoolean("MAN_STEAM_OFF") == FALSE)
		{
			int nState = !GetIsVentActive(OBJECT_SELF);
			
			SetVentActive(nState, OBJECT_SELF);
			
			if (nState)
				{
					object oTarget = GetFirstInPersistentObject(OBJECT_SELF, OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
					
					while (GetIsObjectValid(oTarget))
						{
							ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(STEAM_DAMAGE_AMOUNT, DAMAGE_TYPE_UNIVERSAL), oTarget);
							
							oTarget = GetNextInPersistentObject(OBJECT_SELF, OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
						}
				}
		}
 }
